/*
 * 用mmap更改文件内容
 *
 * 李一鸣   1160300625
 */

#include <stdlib.h> 
#include <stdio.h>
#include <fcntl.h> /* open */
#include <unistd.h> /* fstat、write、mmap */
#include <sys/mman.h> /* mmap */
#include <sys/stat.h> /* fstat (、open) */
#include <sys/types.h> /* fstat (、open) */

void mmapModify(int fd, int size){
    char *bufp;  /* 指向新创建的虚拟内存区域 */

    /* 必须是MAP_SHARED, MAP_PRIVATE不可以 */
    bufp = mmap(NULL, size, PROT_WRITE, MAP_SHARED, fd, 0);
    bufp[0] = 'J'; /* 在虚拟内存中更改，实际上会改变原文件内容 */
    munmap(bufp, size); /* 写回 */

    return;
}

int main(int argc, char **argv){
    /* 检查命令行参数是否合法 */
    if(argc !=2 ){
        printf("usage: %s <filename>\n", argv[0]);
        exit(-1);
    }

    struct stat stat;
    int fd;

    /* 打开文件并修改 */
    fd = open(argv[1], O_RDWR, S_IWOTH);
    fstat(fd, &stat);
    mmapModify(fd, stat.st_size);
    return 0;
}
