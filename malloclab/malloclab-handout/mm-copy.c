/*
 * mm-implicit.c -  Simple allocator based on implicit free lists,
 *                  first fit placement, and boundary tag coalescing.
 *
 * 李一鸣          1160300625
 *
 * Each block has header and footer of the form:
 *
 *      31                     3  2  1  0
 *      -----------------------------------
 *     | s  s  s  s  ... s  s  s  0  0  a/f
 *      -----------------------------------
 *
 * where s are the meaningful size bits and a/f is set
 * iff the block is allocated. The list has the following form:
 *
 * begin                                                          end
 * heap                                                           heap
 *  -----------------------------------------------------------------
 * |  pad   | hdr(8:a) | ftr(8:a) | zero or more usr blks | hdr(8:a) |
 *  -----------------------------------------------------------------
 *          |       prologue      |                       | epilogue |
 *          |         block       |                       | block    |
 *
 * The allocated prologue and epilogue blocks are overhead that
 * eliminate edge conditions during coalescing.
 */

 /* ################ 优化后的分配器 ############## */

/*
 * 李一鸣          1160300625
 *
 * 采用分离的空闲链表，搜索更加快
 *
 */
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <unistd.h>
#include <string.h>

#include "mm.h"
#include "memlib.h"

team_t team = {
    /* Team name */
    "Ateam",
    /* First member's full name */
    "李一鸣",
    /* First member's email address */
    "upupming@gmail.com",
    /* Second member's full name (leave blank if none) */
    "",
    /* Second member's email address (leave blank if none) */
    ""
};

///* $begin mallocmacros */
///* Basic constants and macros */
//#define WSIZE       4       /* word size (bytes) */
//#define DSIZE       8       /* doubleword size (bytes) */
//#define CHUNKSIZE  (1<<12)  /* initial heap size (bytes) */
//#define OVERHEAD    8       /* overhead of header and footer (bytes) */
//
//#define MAX(x, y) ((x) > (y)? (x) : (y))
//
///* Pack a size and allocated bit into a word */
//#define PACK(size, alloc)  ((size) | (alloc))
//
///* Read and write a word at address p */
//#define GET(p)       (*(size_t *)(p))
//#define PUT(p, val)  (*(size_t *)(p) = (val))
//
///* Read the size and allocated fields from address p */
///* 从地址p处读出块大小、是否已分配的信息 */
//#define GET_SIZE(p)  (GET(p) & ~0x7)
//#define GET_ALLOC(p) (GET(p) & 0x1)
//
///* Given block ptr bp, compute address of its header and footer */
///* 给定块指针ptr，计算header、footer的地址，常常对块指针ptr先用HDRP得到header，再用GET_SIZE、GET_ALLOC得到块大小和是否已分配的信息 */
//#define HDRP(bp)       ((char *)(bp) - WSIZE)
//                                // 块指针-4字节 = header指针
//#define FTRP(bp)       ((char *)(bp) + GET_SIZE(HDRP(bp)) - DSIZE)
//                              // 下一块的头部               - 8字节  == 当前块的脚部
//
///* Given block ptr bp, compute address of next and previous blocks */
///* 给定块指针ptr，计算下一块、前一块的指针 */
//#define NEXT_BLKP(bp)  ((char *)(bp) + GET_SIZE(HDRP(bp)))
//                                            // 当前块大小
//#define PREV_BLKP(bp)  ((char *)(bp) - GET_SIZE(((char *)(bp) - DSIZE)))
//                                            // 前一块大小
///* $end mallocmacros */
//
///* Global variables */
//static char *heap_listp;  /* pointer to first block */
//#ifdef NEXT_FIT
//static char *rover;       /* next fit rover */
//#endif

/* 8字节对齐 */
#define ALIGNMENT 8

/* 向上取能整除ALIGNMENT的数 */
#define ALIGN(size) (((size) + (ALIGNMENT-1)) & ~0x7)

/* size_t类型的对齐后大小 */
#define SIZE_T_SIZE (ALIGN(sizeof(size_t)))

#define WSIZE     4          // 字：4字节
#define DSIZE     8          // 双字：8字节
#define INITCHUNKSIZE (1<<6)
#define CHUNKSIZE (1<<12)//+(1<<7)

#define LIST    20 // 链表包含20个等价类
#define REALLOC_BUFFER  (1<<7) // realloc 缓冲器

#define MAX(x, y) ((x) > (y) ? (x) : (y))
#define MIN(x, y) ((x) < (y) ? (x) : (y))

/* Pack a size and allocated bit into a word */
#define PACK(size, alloc) ((size) | (alloc))

/* Read and write a word at address p */
#define GET(p)            (*(unsigned int *)(p))
// 不改变原有TAG
#define PUT(p, val)       (*(unsigned int *)(p) = (val) | GET_TAG(p))
// 使用来自val的TAG
#define PUT_NOTAG(p, val) (*(unsigned int *)(p) = (val))

/* 记录存空闲块的前驱或后继结点 */
#define SET_PTR(p, ptr) (*(unsigned int *)(p) = (unsigned int)(ptr))

/* Read the size and allocation bit from address p */
#define GET_SIZE(p)  (GET(p) & ~0x7)
#define GET_ALLOC(p) (GET(p) & 0x1)
/* realloc 标记在从右往左第二个位上 */
#define GET_TAG(p)   (GET(p) & 0x2)
#define SET_RATAG(p)   (GET(p) |= 0x2)
#define REMOVE_RATAG(p) (GET(p) &= ~0x2)

/* Address of block's header and footer */
#define HDRP(ptr) ((char *)(ptr) - WSIZE)
#define FTRP(ptr) ((char *)(ptr) + GET_SIZE(HDRP(ptr)) - DSIZE)

/* Address of  next and previous blocks */
#define NEXT_BLKP(ptr) ((char *)(ptr) + GET_SIZE((char *)(ptr) - WSIZE))
#define PREV_BLKP(ptr) ((char *)(ptr) - GET_SIZE((char *)(ptr) - DSIZE))

/* 空闲块的前驱、后继节点指针 */
#define PRED_PTR(ptr) ((char *)(ptr))
#define SUCC_PTR(ptr) ((char *)(ptr) + WSIZE)

/* 空闲块的前驱、后继节点块指针 */
#define PRED(ptr) (*(char **)(ptr))
#define SUCC(ptr) (*(char **)(SUCC_PTR(ptr)))



/* 20个等价类 */
void *free_lists[LIST];

///* function prototypes for internal helper routines */
//static void *extend_heap(size_t words);
//static void place(void *bp, size_t asize);
//static void *find_fit(size_t asize);
//static void *coalesce(void *bp);
//void mm_checkheap(int verbose);
//static void printblock(void *bp);
//static void checkblock(void *bp);

/* 辅助函数 */
static void *extend_heap(size_t size);
static void *coalesce(void *ptr);
static void *place(void *ptr, size_t asize);
static void insert_node(void *ptr, size_t size);
static void delete_node(void *ptr);


static void *extend_heap(size_t size)
{
    size_t tempsize=size;
    void * ptr= mem_sbrk(tempsize);

    //not enough space
    if(ptr == (void * ) -1)
        return NULL;

    //set header and footer infomation
    //header
    PUT_NOTAG(HDRP(ptr),PACK(tempsize,0));
    //footer
    PUT_NOTAG(FTRP(ptr),PACK(tempsize,0));
    PUT_NOTAG(HDRP(NEXT_BLKP(ptr)),PACK(0,1));
    //insert free node
    insert_node(ptr,tempsize);

    return coalesce(ptr);
}
//insert the node to the segregated free list
static void insert_node(void * ptr, size_t size)
{
    int index;
    void *next = ptr;
    void *before = NULL;

    for(index=0;index < LIST -1; index++ )
    {
        if(size > 1)
        {
            size = size >> 1;
        }
        else break;
    }
    next = free_lists[index];
    //traverse the free list to find a position to input the node
    while( next !=NULL && size < GET_SIZE(HDRP(next)))
    {
        before = next;
        next = PRED(next);
    }
    if(next != NULL)
    {
        //insert between the list
        if(before!= NULL)
        {
            SET_PTR(PRED_PTR(ptr),next);
            SET_PTR(SUCC_PTR(next), ptr);
            SET_PTR(PRED_PTR(before), ptr);
            SET_PTR(SUCC_PTR(ptr), before);
        }
        //insert at the begining of the list
        else
        {
            SET_PTR(PRED_PTR(ptr), next);
            SET_PTR(SUCC_PTR(next), ptr);
            SET_PTR(SUCC_PTR(ptr), NULL);
            //update the root of the free list
            free_lists[index]= ptr;
        }
    }
    //at the end of the list
    else
    {
        //at the end of the list
        if(before!=NULL)
        {
            SET_PTR(PRED_PTR(ptr),NULL);
            SET_PTR(SUCC_PTR(ptr), before);
            SET_PTR(PRED_PTR(before),ptr);
        }
        //the list is empty initially at that index
        else
        {
            SET_PTR(PRED_PTR(ptr),NULL);
            SET_PTR(SUCC_PTR(ptr),NULL);
            //update the root of free list at the index
            free_lists[index]=ptr;
        }
    }
    return;

}
//delete the node in the segregated free list to input ( if the pointer is in the list 2, after delete and insert again in the 5th list)
static void delete_node(void * ptr)
{
    int index = 0;
    int size= GET_SIZE(HDRP(ptr));

    //select segregated list
    while((index < LIST-1  ) && (size >1) )
    {
        size = size >>1;
        index++;
    }

    //the pointer is not the head of the doubly linked list
    if(PRED(ptr) != NULL)
    {
        //the pointer is not at the end of the doubly linked list
        if(SUCC(ptr) != NULL)
        {
            //link the successor and predessor of the pointer
            SET_PTR(SUCC_PTR(PRED(ptr)) , SUCC(ptr));
            SET_PTR(PRED_PTR(SUCC(ptr)) , PRED(ptr));
        }
        //the pointer is at the end
        else
        {
            SET_PTR(SUCC_PTR(PRED(ptr)), NULL);
            free_lists[index] = PRED(ptr);
        }
    }
    //the pointer at the beginning
    else
    {
        //the list has 2 nodes
        if(SUCC(ptr) !=NULL)
        {
            SET_PTR(PRED_PTR(SUCC(ptr)),NULL);
        }
        else
        {
            free_lists[index]=NULL;
        }
    }
    return;
}

//expand the free block and input to the segregated free list
static void * coalesce(void * ptr)
{
    //check if the prevrious block is allocated
    size_t prev_all =GET_ALLOC(HDRP(PREV_BLKP(ptr)));
    //check if the next block is allocated
    size_t next_all =GET_ALLOC(HDRP(NEXT_BLKP(ptr)));
    size_t size =GET_SIZE(HDRP(ptr));

    //if the previous is reallocated, do not coalesce
    if(GET_TAG(HDRP(PREV_BLKP(ptr))) == 1)
        prev_all = 1;

    //cannot coalesce with previous and the next block
    if(prev_all == 1 && next_all ==1)
        return ptr;

    //can coalesce with the next block
    if(prev_all == 1 && next_all == 0)
    {
        delete_node(ptr);
        delete_node(NEXT_BLKP(ptr));
        //the new size of the coalesce free block
        size += GET_SIZE(HDRP(NEXT_BLKP(ptr)));
        //update the info at the header and the footer of the new free block at the pointer
        PUT(HDRP(ptr), PACK(size,0));
        PUT(FTRP(ptr), PACK(size,0));
    }
    //coalesce with the previous block
    else if(prev_all == 0 && next_all == 1)
    {
        delete_node(ptr);
        delete_node(PREV_BLKP(ptr));
        size+= GET_SIZE(HDRP(PREV_BLKP(ptr)));
        ptr= PREV_BLKP(ptr);
        PUT(HDRP(ptr), PACK(size,0));
        PUT(FTRP(ptr), PACK(size,0));
    }
    //coalesce with both previous and next block
    else if (prev_all ==0 && next_all ==0)
    {
        delete_node(ptr);
        delete_node(PREV_BLKP(ptr));
        delete_node(NEXT_BLKP(ptr));

        size+= GET_SIZE(HDRP(PREV_BLKP(ptr))) + GET_SIZE(HDRP(NEXT_BLKP(ptr)));

        ptr = PREV_BLKP(ptr);
        PUT(HDRP(ptr), PACK(size,0));
        PUT(FTRP(ptr), PACK(size,0));
    }
    //insert the new free list to the segregated free list
    insert_node(ptr,size);
    return ptr;
}


//place the size in the appropriate block in the free list and decide to whether it is needed to split the block
//return the pointer to the new allocated block
static void * place(void * ptr, size_t asize)
{
    size_t size = GET_SIZE(HDRP(ptr));
    size_t remain = size - asize;

    delete_node(ptr);

    if(remain <= DSIZE*2)
    {
        //do not split
        PUT(HDRP(ptr), PACK(size,1));
        PUT(FTRP(ptr), PACK(size,1));
    }

    else if(asize >= 100)
    {
        //split block
        PUT(HDRP(ptr), PACK(remain,0));
        PUT(FTRP(ptr), PACK(remain,0));
        //put the allocated block at the end of the free block
        PUT_NOTAG(HDRP(NEXT_BLKP(ptr)), PACK(asize,1));
        PUT_NOTAG(FTRP(NEXT_BLKP(ptr)), PACK(asize,1));
        //insert the remainder free block to segregated free list
        insert_node(ptr,remain);
        return NEXT_BLKP(ptr);
    }
    //put the allocated block at the beginning of the free block
    else
    {
        //split block
        PUT(HDRP(ptr), PACK(asize,1));
        PUT(FTRP(ptr), PACK(asize,1));
        PUT_NOTAG(HDRP(NEXT_BLKP(ptr)), PACK(remain,0));
        PUT_NOTAG(FTRP(NEXT_BLKP(ptr)), PACK(remain,0));
        insert_node(NEXT_BLKP(ptr),remain);
    }
    return ptr;
}
/*
 * mm_init - initialize the malloc package.
 */
//int mm_init(void)
//{
//    /* create the initial empty heap */
//    /* 创建4个字的初始堆 */
//    if ((heap_listp = mem_sbrk(4*WSIZE)) == NULL)
//        return -1;
//    PUT(heap_listp, 0);                        /* alignment padding */
//    PUT(heap_listp+WSIZE, PACK(OVERHEAD, 1));  /* prologue header */
//    PUT(heap_listp+DSIZE, PACK(OVERHEAD, 1));  /* prologue footer */
//    PUT(heap_listp+WSIZE+DSIZE, PACK(0, 1));   /* epilogue header */
//    heap_listp += DSIZE;
//
//#ifdef NEXT_FIT
//    rover = heap_listp;
//#endif
//
//    /* Extend the empty heap with a free block of CHUNKSIZE bytes */
//    if (extend_heap(CHUNKSIZE/WSIZE) == NULL)
//        return -1;
//    return 0;
//}
int mm_init(void)
{
    int index;
    // 初始空闲链表为空
    for(index=0;index< LIST; index++)
        free_lists[index] = NULL;

    char * heap;
    // 堆分配失败
    if((long)(heap = mem_sbrk(4 * WSIZE)) == -1)
        return  -1;
    //padding
    PUT_NOTAG(heap, 0);
    //input the prologue header
    PUT_NOTAG(heap + 1* WSIZE, PACK(DSIZE,1));
    //prologue footer
    PUT_NOTAG(heap + 2* WSIZE, PACK(DSIZE,1));
    //epilogue header
    PUT_NOTAG(heap + 3* WSIZE, PACK(0,1));

    if(extend_heap(INITCHUNKSIZE)==NULL)
        return -1;
    return 0;
}



/*
 * mm_malloc - Allocate a block by incrementing the brk pointer.
 *     Always allocate a block whose size is a multiple of the alignment.
 */
//void *mm_malloc(size_t size)
//{
//    size_t asize;      /* adjusted block size */
//    size_t extendsize; /* amount to extend heap if no fit */
//    char *bp;
//
//    /* Ignore spurious requests */
//    if (size <= 0)
//        return NULL;
//
//    /* Adjust block size to include overhead and alignment reqs. */
//    //         对齐到DSIZE，并加上头脚部`OVERHEAD`8字节
//    if (size <= DSIZE)
//        asize = DSIZE + OVERHEAD;
//    //        size + (OVERHEAD) + (DSIZE-1)，并对其到DSIZE
//    else
//        asize = DSIZE * ((size + (OVERHEAD) + (DSIZE-1)) / DSIZE);
//
//    /* Search the free list for a fit */
//    if ((bp = find_fit(asize)) != NULL) {
//        place(bp, asize);
//        return bp;
//    }
//
//    /* No fit found. Get more memory and place the block */
//    extendsize = MAX(asize,CHUNKSIZE);
//    if ((bp = extend_heap(extendsize/WSIZE)) == NULL)
//        return NULL;
//    place(bp, asize);
//    return bp;
//}
void *mm_malloc(size_t size)
{
    if(size==0)
        return NULL;

    size_t asize ; // 对齐后字节数
    size_t extend; // 必要时扩充堆
    void * ptr = NULL;

    // 计算aside
    if( size <= DSIZE)
    {
        asize = 2*DSIZE;
    }
    else
    {
        asize =ALIGN(size + DSIZE);
    }

    int index=0;
    size_t search =asize;
    // 遍历分离链表
    while(index < LIST)
    {
        // 查找合适的块
        if((index == LIST -1) || (search <= 1 && free_lists[index] != NULL))
        {
            ptr = free_lists[index];
            // 找到一个最小块
            while(ptr !=NULL  && ((asize > GET_SIZE(HDRP(ptr)) || GET_TAG(ptr))))
            {
                ptr = PRED(ptr);
            }
            // 无法找到
            if(ptr != NULL)
                break;
        }
        search = search >>1;
        index ++;
    }
    // 扩充堆
    if(ptr == NULL)
    {
        extend = MAX(asize,CHUNKSIZE);
        // 扩充失败
        ptr = extend_heap(extend);
        if(ptr == NULL)
            return NULL;
    }
    // 分配空间
    ptr = place(ptr,asize);

    //return pointer to the allocated block
    return ptr;
}

/*
 * mm_free - Freeing a block does nothing.
 */
//void mm_free(void *bp)
//{
//    // 当前块大小
//    size_t size = GET_SIZE(HDRP(bp));
//
//    // footer、header重设为未分配
//    PUT(HDRP(bp), PACK(size, 0));
//    PUT(FTRP(bp), PACK(size, 0));
//    // 前后块的合并
//    coalesce(bp);
//}
void mm_free(void *ptr)
{
    size_t size= GET_SIZE(HDRP(ptr));
    // 移除reallocated位
    REMOVE_RATAG(HDRP(NEXT_BLKP(ptr)));
    // 设置为空闲块
    PUT(HDRP(ptr), PACK(size,0));
    PUT(FTRP(ptr), PACK(size,0));
    // 插入到链表
    insert_node(ptr,size);
    // 合并空闲块
    coalesce(ptr);

}

/*
 * mm_realloc - Implemented simply in terms of mm_malloc and mm_free
 */
//void *mm_realloc(void *ptr, size_t size)
//{
//    void *newp;
//    size_t copySize;
//
//    if ((newp = mm_malloc(size)) == NULL) {
//        printf("ERROR: mm_malloc failed in mm_realloc\n");
//        exit(1);
//    }
//    copySize = GET_SIZE(HDRP(ptr));
//    if (size < copySize)
//      copySize = size;
//    memcpy(newp, ptr, copySize);
//    mm_free(ptr);
//    return newp;
//}
void *mm_realloc(void *ptr, size_t size)
{
    if(size == 0 )
        return NULL;
    void * oldptr = ptr;
    size_t newsize =size;   // 新块大小
    int remain; // 剩余块
    int extend; // 扩充大小
    int blockbuff;

    // 对齐
    if( size <= DSIZE)
    {
        newsize = 2*DSIZE;
    }
    else
    {
        newsize =ALIGN(size + DSIZE);
    }
    // 添加buffer大小
    newsize += REALLOC_BUFFER;
    // buffer值
    blockbuff = GET_SIZE(HDRP(ptr)) - newsize;
    // 空间不足
    if(blockbuff < 0)
    {
        // free 还是 序言块?
        if(GET_ALLOC(HDRP(NEXT_BLKP(ptr)))==0 || GET_SIZE(HDRP(NEXT_BLKP(ptr))) == 0)
        {
            // 计算剩余的空间
            remain = GET_SIZE(HDRP(ptr)) + GET_SIZE(HDRP(NEXT_BLKP(ptr))) - newsize;
            // 需要额外空间
            if(remain < 0)
            {
                extend = MAX ( -remain, CHUNKSIZE);
                // 扩充堆失败
                if(extend_heap(extend) == NULL)
                    return NULL;
                remain += extend;
            }

            delete_node(NEXT_BLKP(ptr));

            // 不必分块
            PUT_NOTAG(HDRP(ptr), PACK(newsize + remain,1));
            PUT_NOTAG(FTRP(ptr), PACK(newsize + remain,1));

        }
        else
        {
            // 空间有剩余
            oldptr = mm_malloc(newsize -DSIZE);
            memcpy( oldptr, ptr, MIN(size,newsize));
            mm_free(ptr);
        }
        blockbuff = GET_SIZE(HDRP(oldptr)) - newsize;
    }

    if(blockbuff < 2 * REALLOC_BUFFER)
    {
        SET_RATAG(HDRP(NEXT_BLKP(oldptr)));
    }
    // 返回重新分配后的指针
    return oldptr;
}
