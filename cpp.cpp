/* run with `gcc cpp.cpp -Wall -std=iso9899:1990 -o cpp` */
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main() {
    long long iterations;
    time_t t;

    printf("Number of iterations: ");
    scanf("%llu", &iterations);

    srand((unsigned) time(&t));

    int sum_total;
    float temp;
    sum_total = 0;

    long long i = 0;
    while (i < iterations) {
        temp = 0;
        
        while (temp < 1) {
            temp += ((float)rand()/(float)(RAND_MAX)); 
            
            sum_total++;
        }
        i++;
    }

    printf("e = %lf\n", ((double)sum_total) / iterations);

    return(0);
}
