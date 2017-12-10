#include <getopt.h>
#include <math.h>
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <errno.h>
#include "cachelab.h"

//#define DEBUG_ON
#define ADDRESS_LENGTH 64

/* Type: Memory address */
typedef unsigned long long int mem_addr_t;

/* Type: cache line
   times is a counter used to implement times replacement policy */
typedef struct cache_line{
    int valid;
    mem_addr_t tag;
    unsigned long long int times;
}cache_line_t;

typedef cache_line_t* cache_set_t;
typedef cache_set_t* cache_t;

/* Globals set by command line args */
int verbosity = 0; /* print trace if set */
int s = 0; /* set index bits */
int b = 0; /* block offset bits */
int E = 0; /* associativity */
char* trace_file = NULL;

/* Derived from command line args */
int S; /* number of sets */
int B; /* block size (bytes) */

/* Counters used to record cache statistics */
int miss_count = 0;
int hit_count = 0;
int eviction_count = 0;
unsigned long long int times_counter = 1;

/* The cache we are simulating */
cache_t cache;
mem_addr_t set_index_mask;

/*
 * initCache - Allocate memory, write 0's for valid and tag and times
 * also computes the set_index_mask
 */
void initCache(){
    /* Allocate memory */
    // S cache sets
    cache = (cache_t)malloc(S*sizeof(cache_set_t));
    int i, j;
    for(i=0; i<S; i++){
        // E cache lines per set
        cache[i] = malloc(E*sizeof(cache_line_t));
        for(j=0; j<E; j++){
            // valid: 0, tag: 0, times: 0
            cache[i][j].valid = 0;
            cache[i][j].tag = 0;
            cache[i][j].times = 0;
        }

    }

    // computes the set_index_mask
    // m = t + s + b, we want derive s use set_index_mask
    set_index_mask = (1 << (s+b)) - (1 << b);
}

/*
 * freeCache - free allocated memory
 */
void freeCache()
{
    int i;
    for(i=0; i<S; i++)
        free(cache[i]);
    free(cache);
}

/*
 * accessData - Access data at memory address addr.
 *   If it is already in cache, increase hit_count
 *   If it is not in cache, bring it in cache, increase miss count.
 *   Also increase eviction_count if a line is evicted.
 */
void accessData(mem_addr_t addr){
    mem_addr_t set = (addr & set_index_mask)>>b;
    //printf("addr = %lld, set_index_mask = %lld, set = %lld ", addr, set_index_mask, set);
    mem_addr_t tag = (addr >> (s+b));
    mem_addr_t block = (addr & (~B));
    printf("tag = %lld, set = %lld, block = %lld ", tag, set, block);
    int j, hit = 0;
    for(j=0; j<E; j++){
        // If it is already in cache, increase hit_count
        if(cache[set][j].valid && cache[set][j].tag == tag){
            // now its most recently used
//            int m=0, n;
//            for(n=1; n<E; n++)
//                if(cache[set][n].times > cache[set][m].times)
//                    m = n;
            cache[set][j].times = times_counter++;
            hit_count++;
            hit = 1;
            if(verbosity)
                printf("hit ");
            //printf("命中set = %lld, j = %d", set, j);
            break;
        }
//        else if(!cache[set][j].valid){
//            printf("cache[%lld][%d].valid = 0", set, j);
//        }
    }
    // If it is not in cache, bring it in cache, increase miss count.
    if(!hit){
        miss_count++;
        if(verbosity)
            printf("miss ");
        // replace the least-recently-used line
        int k = 0;
        for(j=1; j<E; j++)
                if(cache[set][j].times < cache[set][k].times)
                    k = j;
        if(cache[set][k].valid){
            if(verbosity)
                printf("eviction ");
            eviction_count++;
            //printf("驱逐set = %lld, k = %d ", set, k);
        }
//        int m=0, n;
//        for(n=1; n<E; n++)
//            if(cache[set][n].times > cache[set][m].times)
//                m = n;
        cache[set][k].times = times_counter++;
        cache[set][k].tag = tag;
        cache[set][k].valid = 1;
        //printf("缓存set = %lld, k = %d ", set, k);
//        printf("cache[%lld][%d].valid = 1", set, k);
    }
}

/*
 * replayTrace - replays the given trace file against the cache
 */
 void replayTrace(char* trace_fn){
    char buf[1000];
    mem_addr_t addr = 0;
    unsigned int len = 0;
    FILE* trace_fp = fopen(trace_fn, "r");

    if(!trace_fp){
        /* Fill BUF with a string describing the meaning of the `errno' code in
   ERRNUM.  */
        fprintf(stderr, "%s: %s\n", trace_fn, strerror(errno));
        exit(1);
    }

    while(fgets(buf, 1000, trace_fp) != NULL){
        if(buf[1]=='S' || buf[1]=='L' || buf[1]=='M'){
            sscanf(buf+3, "%llx,%u", &addr, &len);

            if(verbosity)
                printf("%c %llx,%u ", buf[1], addr, len);

            accessData(addr);

            /* If the instruction is R/W then access again */
            if(buf[1]=='M')
                accessData(addr);
            if(verbosity)
                printf("\n");
        }
    }
 }

/*
 * printUsage - Print usage info
 */
void printUsage(char* argv[])
{
    printf("Usage: %s [-hv] -s <num> -E <num> -b <num> -t <file>\n", argv[0]);
    printf("Options:\n");
    printf("  -h         Print this help message.\n");
    printf("  -v         Optional verbose flag.\n");
    printf("  -s <num>   Number of set index bits.\n");
    printf("  -E <num>   Number of lines per set.\n");
    printf("  -b <num>   Number of block offset bits.\n");
    printf("  -t <file>  Trace file.\n");
    printf("\nExamples:\n");
    printf("  linux>  %s -s 4 -E 1 -b 4 -t traces/yi.trace\n", argv[0]);
    printf("  linux>  %s -v -s 8 -E 2 -b 4 -t traces/yi.trace\n", argv[0]);
    exit(0);
}


int main(int argc, char* argv[])
{
    char c;

    while((c=getopt(argc, argv, "s:E:b:t:vh")) != -1){
        switch(c){
        case 's':
            s = atoi(optarg);
            break;
        case 'E':
            E = atoi(optarg);
            break;
        case 'b':
            b = atoi(optarg);
            break;
        case 't':
            trace_file = optarg;
            break;
        case 'v':
            verbosity = 1;
            break;
        case 'h':
            printUsage(argv);
            exit(0);
        default:
            printUsage(argv);
            exit(1);
        }
    }

    /* Make sure that all required command line args were specified */
    if (s == 0 || E == 0 || b == 0 || trace_file == NULL) {
        printf("%s: Missing required command line argument\n", argv[0]);
        printUsage(argv);
        exit(1);
    }

    /* Compute S, E and B from command line args */
    S = pow(2, s);
    B = pow(2, b);

    /* Initialize cache */
    initCache();

#ifdef DEBUG_ON
    printf("DEBUG: S:%u E:%u B:%u trace:%s\n", S, E, B, trace_file);
    printf("DEBUG: set_index_mask: %llu\n", set_index_mask);
#endif // DEBUG_ON

    replayTrace(trace_file);

    /* Free allocated memory */
    freeCache();

    /* Output the hit and miss statistics for the autograder */
    printSummary(hit_count, miss_count, eviction_count);
    return 0;
}
