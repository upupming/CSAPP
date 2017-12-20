/* $begin forkprob2 */
/* 8.24 
 * 李一鸣
 */

#include <stdio.h> // fflush
#include <stdlib.h> // atexit exit
#include <string.h> // sprintf
#include <signal.h> // psignal
#include <sys/types.h> // wait
#include <sys/wait.h> // wait
#include <unistd.h> // fork


int main() 
{
    if (fork() == 0) {
        int *q = NULL;
        *q = 6;
    }
    if (fork() == 0) {
        int *p = NULL;
        *p = 5;
    }
    else {
        int status, pid;
        while((pid = wait(&status))>0){
            char s[100];
            if(WIFEXITED(status))
                printf(s, "child %d terminated normally with exit status=%d\n", pid, WEXITSTATUS(status));
            else if(WIFSIGNALED(status)){
                sprintf(s, "child %d terminated by signal %d", pid, WTERMSIG(status));
                psignal(WTERMSIG(status), s);
            }
            else
                printf("child %d terminated abnormally\n", pid);
        }
    }
    exit(0);
}
/* $end forkprob2 */

