// Matias Botero

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define NUMBER 5

int main(int argc, char *argv[])
{
    printf("Hello World!\n");
    printf("sfgsdfg\n");
    printf("%d) option %s", 1, "ONE");

    int number = 32;
    char phrase[20] = "Hello World!";

    for (int x = 0; x < NUMBER; x++)
    {
        // do something
    }

    int whole_number = 42;
    int *whole_number_pointer = &whole_number;

    *whole_number_pointer = 21;

    printf("\n\n%d\n", whole_number);
    printf("%d\n", *whole_number_pointer);
    printf("%p\n", whole_number_pointer);

    printf("\nBytes in int: %ld\n", sizeof(int));

    whole_number_pointer += 1;
    printf("\n%p\n", whole_number_pointer);

    int *malloced_int = (int *)malloc(sizeof(int));

    double *malloced_double = (double *)malloc(sizeof(double));
    *malloced_double = 102.45;
    printf("\n%lf\n", *malloced_double);

    free(malloced_double);
    free(malloced_int);

    // int *bad_pointer = (int *)42;
    // printf("%d\n", *bad_pointer);

    int num;
    printf("prompt! ");
    scanf("%d", &num);

    int *array = (int *)calloc(5, sizeof(int));
    // update element at index 3
    // array[3]
    *(array + 3) = 56;

    return 0; // no errors
}

int get_sum(int a, int b)
{
    return a + b;
}
