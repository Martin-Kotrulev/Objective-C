//
//  main.c
//  Numbers
//
//  Created by Martin Kotrulev on 11/11/14.
//  Copyright (c) 2014 Martin Kotrulev. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

int main(int argc, const char * argv[]) {
    unsigned long x = 255;
    printf("X is %lu.", x);
    printf("X in octal is %lo.", x);
    printf("X in hexadecimal is %lx.", x);
    printf("3 * 3 + 5 * 2 = %d\n", 3 * 3 + 5 * 2);
    printf("11 / 3 = %d\n", 11 / 3);
    printf("11 / 3 = %d remider = %d\n",
           11 / 3, 11 % 3);
    printf("11 / 3.0 = %f\n", 11 / (float)3);
    printf("The absolute value of -3 is %d\n", abs(-3));
    
    double y = 123456.789;
    printf("y is %.2f\n", y);
    printf("y is %.2e2\n", y);
    
    return 0;
}
