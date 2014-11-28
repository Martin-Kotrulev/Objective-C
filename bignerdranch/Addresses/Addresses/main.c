//
//  main.c
//  Addresses
//
//  Created by Martin Kotrulev on 11/18/14.
//  Copyright (c) 2014 Martin Kotrulev. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    int i = 17;
    int *addressOfI = &i;
    printf("i stores it's value at %p\n", addressOfI);
    printf("this function starts at %p\n", main);
    printf("the int stored at addresOfI is %d\n", *addressOfI);
    
    // changing the data on address
    *addressOfI = 89;
    printf("the int stored at addressOfI is %d\n", *addressOfI);
    printf("An int is %zu bytes\n", sizeof(int));
    printf("A pointer is %zu bytes\n", sizeof(int *));
    
    //null pointer
    float *myPtr;
    if (myPtr) printf("My pointer is not null\n");
    else printf("My pointer is null\n");
    
    // shows how much memory consumes float
    float f = 2.7;
    float *fPtr = &f;
    printf("the size of float f is %zu\n bytes\n",
           sizeof(fPtr));
    return 0;
}
