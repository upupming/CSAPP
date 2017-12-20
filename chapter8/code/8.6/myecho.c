#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv, char **envp){
   printf("Command-ine arguments:\n");
   int i;
   for(i=0; i<argc; i++)
       printf("argv[%d]: %s\n", i, argv[i]);
   
   printf("Environment variables:\n");
   i = 0;
   char *p;
   while((p = envp[i])!=NULL){
       printf("envp[%d]: %s\n", i, p);
       i++;
   }
   
}
