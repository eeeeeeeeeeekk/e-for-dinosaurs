/* run with `gcc cpp.cpp -Wall -std=iso9899:1990 -o cpp` */
#include <stdio.h>
#include <stdlib.h>
#include <time.h>


int main() {
    long long iterations;
    time_t t;

    printf("Number of iterations: ");
    scanf("%llu", &iterations);

    /* initializes pseudo random number generator */
    srand((unsigned) time(&t));

    int sum_total;
    float temp;
    sum_total = 0;

    /* for loop manual */ 
    long long i = 0;
    while (i < iterations) {
        temp = 0;
        
        while (temp < 1) {
            /* get random float */
            temp += ((float)rand()/(float)(RAND_MAX)); 
            
            sum_total++;
        }
        i++;
    }

    /* printf("%llu %llu\n", sum_total, iterations); */
    printf("%lf\n", ((double)sum_total) / iterations);

    return(0);
}
