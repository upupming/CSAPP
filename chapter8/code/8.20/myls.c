/*
 * 8.20 myls
 * 李一鸣
 */

#include <stdio.h>
#include <stdlib.h> // setenv
#include <getopt.h> // getopt
#include <string.h> // strerror
#include <errno.h> // errno
#include <unistd.h> // execve

int main(int argc, char **argv, char **envp){
    char c;
    char *cols = "80";
    int my_argc=0; 
    char *my_argv[argc];
    
    int i;
    for(i=0; i<argc; i++){
        if(strcmp(argv[i], "-setenv")==0){
            i++;
            cols = argv[i];
            printf("%s\n", cols);
        }
        else{
            my_argv[my_argc++] = argv[i];
        }
    }
    my_argv[my_argc] = NULL;
    
    setenv("COLUMNS", cols, 1);
    puts(getenv("COLUMNS"));

    if((execve("/bin/ls", my_argv, envp)==-1)){
        printf("execute /bin/ls failed: %s", strerror(errno));
    }
    return 0;
}

