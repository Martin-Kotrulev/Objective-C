//
//  main.c
//  Loops
//
//  Created by Martin Kotrulev on 11/18/14.
//  Copyright (c) 2014 Martin Kotrulev. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    for (int i = 99; i >= 0; i -= 3) {
        if (i % 5 == 0) printf("Found one!\n");
        else printf("%i\n", i);
    }
    return 0;
}
