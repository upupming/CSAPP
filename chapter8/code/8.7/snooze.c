#include <stdio.h>
#include <unistd.h>
#include <signal.h>
#include <stdlib.h>

unsigned int snooze(unsigned int secs){
    unsigned int left = sleep(secs);
    printf("Slept for %d of %d secs.\n", secs-left, secs);
    return left;
}

void sigint_handler(int sig){
    printf("CTRL+C\n");
}

int main(int argc, char **argv){
    if(argc != 2){
        fprintf(stderr, "usage: %s <secs>\n", argv[0]);
        exit(0);
    }

    unsigned int secs = atoi(argv[1]);
    
    if(signal(SIGINT, sigint_handler)==SIG_ERR){
        printf("Install the SIGINT handler error!\n");
    }
    else{
        snooze(secs);
    }


    return 0;
}
