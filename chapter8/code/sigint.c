#include <stdio.h>
#include <signal.h>
#include <stdlib.h>
#include <unistd.h>

void sigint_handler(int sig){
    printf("So do you think you can kill me with CTRL+C ?\n");
    printf("Well...\n");
}

int main(){
    if((signal(SIGINT,sigint_handler) == SIG_ERR))
        printf("error setting handler!\n");

    pause();

    return 0;
}
