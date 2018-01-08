/*
 * mm.c - Memory allocator that implements malloc, free, and realloc C packages.
 * Makes use of explicit free lists to keep track of memory.  Allocated blocks
 * have a header and a footer that points to the header.  Free blocks have the
 * same header and footer, and pointers to previous and next blocks in the free
 * list.  Two pointers to the beginning and end of the free list are maintained
 * throughout.  The free list is organized according to block size (ascending)
 * to enjoy minimal internal fragmentation.  A first-fit method is used, and
 * since the blocks are sorted this implies a best-fitting block every time malloc
 * is called.  If possible, the block is split and re-added to the free list.
 */

#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <unistd.h>
#include <string.h>

#include "mm.h"
#include "memlib.h"

/*********************************************************
 * NOTE TO STUDENTS: Before you do anything else, please
 * provide your team information in the following struct.
 ********************************************************/
team_t team = {
    /* Team name */
    "Lolocopter",
    /* First member's full name */
    "Tyler Robinson",
    /* First member's email address */
    "tyler936@msn.com",
    /* Second member's full name (leave blank if none) */
    "Nate Bradford",
    /* Second member's email address (leave blank if none) */
    "u0534715@umail.utah.edu"
};

/* single word (4) or double word (8) alignment */
#define ALIGNMENT 8
#define WORD_SIZE 4

/* minimum block size */
#define MIN_BLOCK_SIZE 8

/* Pack a size and allocated bit into a word */
#define PACK(size, alloc) ((ALIGN(size)) | (alloc))

/* Read/write a word at address p */
#define GET(p) (*(unsigned int *)(p))
#define PUT(p, val) (*(unsigned int *)(p) = (val))

/* Read the size or allocated field from address p */
#define GET_SIZE(p) (GET(p) & ~0x7)
#define GET_ALLOC(p) (GET(p) & 0x1)

/* Get info from the block pointer or header */
#define HEADER(bp) ((char *)(bp) - WORD_SIZE)
#define FOOTER(bp) ((char *)(bp) + GET_SIZE(HEADER(bp)))
#define DATA(hp) ((char *)(hp) + WORD_SIZE)

#define NEXT_HEADER(bp) (FOOTER(bp) + WORD_SIZE)
#define PREV_HEADER(bp) (HEADER(bp) - WORD_SIZE)

#define NEXT_POINTER(hp) (GET(DATA(hp) + WORD_SIZE))
#define PREV_POINTER(hp) (GET(DATA(hp)))

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(size) (((size) + (ALIGNMENT-1)) & ~0x7)

unsigned int *list_begin;
unsigned int *list_end;
void *prologue;
int verb = 0;

/*
 * reset_pointers - Clears the pointers of the given header
 */
void reset_pointers(void *header)
{
	if(header)
		PREV_POINTER(header) = NEXT_POINTER(header) = NULL;
}
/*
* find_recursive - checks the given header to see if size will fit
*/
void *find_recursive(size_t size, void *header)
{
	//Error check
	if(!header) return NULL;

	//BASE CASE: size fits in current block
	if(size <= GET_SIZE(header)) return header;

	//Block doesn't fit, recurse
	return find_recursive(size, NEXT_POINTER(header));
}

/*
 * find - finds the best-fitting block from the beginning of the free list
 */
void *find(size_t size)
{
	return find_recursive(size, list_begin);
}

/*
 * remove - Remove the given header off of the free list
 */
void remove_free(void *header)
{
	if(!header) return;

	/* FOLLOWING CASES ARE TO REARRANGE FREE LIST */

	//Case 0: Only item on free list
	if(list_begin == list_end)
		list_begin = list_end = NULL;


	//Case 1: First item on free list
	else if(list_begin == header)
	{
		list_begin = NEXT_POINTER(header);
		PREV_POINTER(NEXT_POINTER(header)) = NULL;
	}

	//Case 2: Last item on free list
	else if (list_end == header)
	{
		list_end = PREV_POINTER(header);
		NEXT_POINTER(PREV_POINTER(header)) = NULL;
	}

	//Case 3: Middle item in list
	else
	{
		if(verb)
			printf("Case 3 - header: %x size: %d PrevPointer: %x NextPointer: %x\n", (unsigned int)header, GET_SIZE(header), NEXT_POINTER(header));

		NEXT_POINTER(PREV_POINTER(header)) = NEXT_POINTER(header);
		PREV_POINTER(NEXT_POINTER(header)) = PREV_POINTER(header);
	}
}

/*
 * add - Adds a free block onto the free list
 */
void add(void *header)
{
	if(!header) return;

	reset_pointers(header);

	//If the list is empty
	if(!list_begin && !list_end)
	{
		list_begin = list_end = header;
		return;
	}

	if(verb)
		printf("List is not empty\n");

	//If header size is smaller than anything in list
	if(GET_SIZE(header) <= GET_SIZE(list_begin))
	{
		NEXT_POINTER(header) = list_begin;
		PREV_POINTER(list_begin) = header;
		list_begin = header;
		return;
	}

	//If header size is bigger than anything in list
	if(GET_SIZE(header) >= GET_SIZE(list_end))
	{
		NEXT_POINTER(list_end) = header;
		PREV_POINTER(header) = list_end;
		list_end = header;
		return;
	}

	//Otherwise, find where we fit
	void* current = find(GET_SIZE(header));
	PREV_POINTER(header) = PREV_POINTER(current);
	NEXT_POINTER(PREV_POINTER(header)) = header;
	PREV_POINTER(current) = header;
	NEXT_POINTER(header) = current;
}

int is_memory_inbounds(void *ptr)
{
	return (ptr >= mem_heap_lo() && ptr < mem_heap_hi());
}

/*
 * mm_init - initialize the malloc package. Just sets last_free to NULL
 */
int mm_init(void)
{
	if(verb)
		printf("Initialize memory management\n");

	prologue = mem_sbrk(WORD_SIZE);

	if ((int)prologue == -1) return -1;

	PUT(prologue, PACK(WORD_SIZE, 1));

	list_begin = NULL;
	list_end = NULL;

	return 0;
}

/*
 * mm_malloc - Search for a block on the heap large enough to allocate
 * for given word size.  If there is not enough room, expand the heap.
 * Return a pointer to the data block after allocating the block.
 */
void *mm_malloc(size_t size)
{
	if(verb)											//Print statement (TAKE OUT WHEN DONE)
		printf("Enter malloc - size: %d\n", size);

	//Ignore impossible size requests
	if(size <= 0) return NULL;

	//Align the size so we don't run into any problems
	size = ALIGN(size);

	//Find the size with all the additional parts on it(header/footer)
	size_t newsize = ALIGN(size + ALIGNMENT);

	if(verb && list_begin && list_end)
		printf("list_begin: %x size: %d list_end: %x size: %d\n",(unsigned int)list_begin, GET_SIZE(list_begin), (unsigned int)list_end, GET_SIZE(list_end));

	//If we can fit anywhere in the free list
	if((list_begin && (size == GET_SIZE(list_begin) || size + MIN_BLOCK_SIZE < GET_SIZE(list_begin))
	   || list_end && (size == GET_SIZE(list_end)   || size + MIN_BLOCK_SIZE < GET_SIZE(list_end))))
	{
		if(verb)
			printf("size + blocksize: %d\n", size + MIN_BLOCK_SIZE);
		//Find the best block
		void *currentHeader;
		if(size == GET_SIZE(list_begin))
			currentHeader = list_begin;
		else if(size == GET_SIZE(list_end))
			currentHeader = list_end;
		else
			currentHeader = find(size + MIN_BLOCK_SIZE + MIN_BLOCK_SIZE);

		if(verb)
			printf("Found the block: %x size: %d\n", (unsigned int)currentHeader, GET_SIZE(currentHeader));

		//Remove from the free list
		remove_free(currentHeader);

		if(verb)
			printf("Removed the block: %x size: %d\n", (unsigned int)currentHeader, GET_SIZE(currentHeader));

		size_t oldSize = GET_SIZE(currentHeader);

		//Mark as allocated and set footer pointer
		PUT(currentHeader, PACK(size, 1));
		GET(FOOTER(DATA(currentHeader))) = currentHeader;

		//If the block with header/footer will fit in the free block
		if(size + MIN_BLOCK_SIZE <= oldSize)
		{
			//Get the header of the block we need to make
			void *nextHeader = NEXT_HEADER(DATA(currentHeader));

			//Mark this as a block with a header and footer
			PUT(nextHeader, PACK(oldSize - size - MIN_BLOCK_SIZE, 0));
			GET(FOOTER(DATA(nextHeader))) = nextHeader;

			//Add this to the free list
			add(nextHeader);
		}

		mm_check();
		return DATA(currentHeader);
	}

	if(verb)
		printf("Asking for more heap memory\n");

	//Otherwise, try to request more memory, and return the block pointer
	void *currentHeader = mem_sbrk(newsize);

	//Failed to allocate memory
	if ((int)currentHeader == -1) return NULL;

	//Mark the header allocated
	PUT(currentHeader, PACK(size, 1));

	if(verb)
		printf("Got memory: %x size: %d\n", (unsigned int)currentHeader, GET_SIZE(currentHeader));

	//Set the footer to point to the pointer
	GET(FOOTER(DATA(currentHeader))) = currentHeader;

	if(verb)
		printf("Exit malloc\n");


	mm_check();
	//Return allocated memory block
	return DATA(currentHeader);
}

/*
 * mm_coalesce - check adjacent blocks to see if they are free and
 * merge them together if they are
 */
 void *mm_coalesce(void *ptr)
 {
	if(verb)
		printf("Enter coalesce\n");

	void *header = HEADER(ptr);

	void *nextHeader = NEXT_HEADER(ptr);
	void *prevHeader = GET(PREV_HEADER(ptr));

	if(verb)
		printf("header: %x prevHeader: %x nextHeader: %x\n", header, prevHeader, nextHeader);

	size_t oldSize = GET_SIZE(header);

	if(is_memory_inbounds(nextHeader) && !GET_ALLOC(nextHeader))
	{
		if(verb)
			printf("Right Coalesce\n");

		remove_free(nextHeader);

		reset_pointers(nextHeader);

		GET(FOOTER(DATA(header))) = NULL;

		PUT(header,PACK(GET_SIZE(header) + GET_SIZE(nextHeader) + MIN_BLOCK_SIZE, 0));

		GET(FOOTER(DATA(header))) = header;
	}
	if(is_memory_inbounds(prevHeader) && !GET_ALLOC(prevHeader))
	{
		if(verb)
			printf("Left Coalesce\n");

		remove_free(prevHeader);

		reset_pointers(prevHeader);

		GET(FOOTER(DATA(prevHeader))) = NULL;

		PUT(prevHeader,PACK(GET_SIZE(prevHeader) + GET_SIZE(header) + MIN_BLOCK_SIZE, 0));

		GET(FOOTER(DATA(prevHeader))) = prevHeader;

		header = prevHeader;
	}

	size_t newSize = GET_SIZE(header);

	if(verb && oldSize != newSize)
		printf("oldSize: %d newSize: %d\n", oldSize, newSize);

	if(verb)
		printf("Exit coalesce\n");

	return header;
 }

/*
 * mm_free - Free up the block at ptr and try to coalesce adjacent blocks
 */
void mm_free(void *ptr)
{
	if(verb)											//Print statement (TAKE OUT WHEN DONE)
		printf("Enter Free - ptr: %x size: %d\n", (unsigned int)HEADER(ptr), GET_SIZE(HEADER(ptr)));

	//Get the header from the pointer
	void *header = HEADER(ptr);

	//If pointer is invalid, return
	if(header == NULL || !is_memory_inbounds(header) || GET_ALLOC(header) == 0)
		return;

	//Mark the header as free
	PUT(header,PACK(GET_SIZE(header), 0));

	//Try to coalesce adjacent blocks
	header = mm_coalesce(ptr);

	//Add the block to the free list
	add(header);

	mm_check();
	if(verb)											//Print statement (TAKE OUT WHEN DONE)
	{	printf("Exit Free\n"); }//mm_check(); }
}

/*
 * mm_realloc - Change the size of the memory block pointed to by ptr to be the new size
 * given by size
 */
void *mm_realloc(void *ptr, size_t size)
{
	if(!is_memory_inbounds(ptr)) return mm_malloc(size);
	if(size <= 0) { mm_free(ptr); return NULL; }

	void *header = HEADER(ptr);
	size_t newSize = ALIGN(size);
	size_t oldSize = GET_SIZE(header);

	if(verb)
		printf("Enter realloc - header: %x oldSize: %d newSize: %d Aligned Size: %d\n", (unsigned int)HEADER(ptr), GET_SIZE(HEADER(ptr)), size, newSize);

	if(newSize == GET_SIZE(header)) return ptr;

	if(newSize + MIN_BLOCK_SIZE < GET_SIZE(header))
	{
		PUT(header, PACK(newSize, 1));
		GET(FOOTER(DATA(header))) = header;

		unsigned int *newHeader = NEXT_HEADER(DATA(header));

		printf("newHeader: %x\n", (unsigned int)newHeader);

		PUT(newHeader, PACK((oldSize - newSize - MIN_BLOCK_SIZE), 0));
		GET(FOOTER(DATA(newHeader))) = newHeader;

		add(newHeader);

		return DATA(header);
	}

	void *newHeader = mm_coalesce(ptr);
	if(oldSize < GET_SIZE(newHeader) && newSize + MIN_BLOCK_SIZE < GET_SIZE(newHeader))
	{
		PUT(newHeader, PACK(newSize,1));

		if(newHeader != header)
			memcpy(DATA(newHeader), DATA(header), size);

		PUT(NEXT_HEADER(DATA(newHeader)), PACK(GET_SIZE(newHeader) - newSize, 0));

		add(NEXT_HEADER(DATA(newHeader)));

		return DATA(newHeader);
	}

	newHeader = HEADER(mm_malloc(newSize));

	memcpy(DATA(newHeader), DATA(header), newSize);

	PUT(header, PACK(GET_SIZE(header), 0));
	add(header);

	if(verb)
		printf("Exit realloc - newHeader: %x size: %d\n", (unsigned int)newHeader, GET_SIZE(newHeader));
	return DATA(newHeader);
}


/*
 * mm_check - Goes through the entire heap checking for validity of the memory
 *
 * Things to check
 *  -Is every block in the free list marked as free?
 *  -Are there any contiguous free blocks that somehow escaped coalescing?
 *	-Is every free block actually in the free list?
 *	-Do the pointers in the free list point to valid free blocks?
 *	-Do any allocated blocks overlap?
 *	-Do the pointers in a heap block point to valid heap addresses?
 */
int mm_check(void)
{
	//Start at the beginning of the list
	void *current = list_begin;

	//Iterate through the entire free list
	while(current != NULL)
	{
		//If the current block points to an allocated block
		if(NEXT_POINTER(current) && GET_ALLOC(NEXT_POINTER(current)))
		{
			printf("Block: %x points to an allocated block\n", (unsigned int)current);
			return 0;
		}

		//If the current block is not marked free
		if(GET_ALLOC(current))
		{
			printf("Block: %x is in free list but marked allocated\n", (unsigned int)current);
			return 0;
		}

		current = NEXT_POINTER(current);
	}

	//Start at the beginning of the heap
	current = prologue + WORD_SIZE;

	//Keep track of the previous block
	void *previous = NULL;

	//Iterate through the heap
	while(is_memory_inbounds(current))
	{
		//If the current block has an invalid size
		if(previous && current < previous)
		{
			printf("Block: %x has invalid size: %d\n", (unsigned int)previous, GET_SIZE(previous));
			return 0;
		}

		//If two consecutive blocks escaped coalescing
		if(previous && (!GET_ALLOC(previous) && !GET_ALLOC(current)))
		{
			printf("Blocks: %x and %x escaped coalescing\n", (unsigned int)current, (unsigned int)previous);
			return 0;
		}

		//Update the pointers
		previous = current;
		current = NEXT_HEADER(DATA(current));
	}

	//Heap OK
	return 1;
}













