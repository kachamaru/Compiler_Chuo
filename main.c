#include<stdio.h>
extern int test(void);

int main(int argc, char* argv[]) {
    printf("%d\n", test());
    return (0);
}