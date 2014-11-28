//
//  main.c
//  BeerSong
//
//  Created by Martin Kotrulev on 11/11/14.
//  Copyright (c) 2014 Martin Kotrulev. All rights reserved.
//

#include <stdio.h>
void singTheSong(int numOfBottles){
    if (numOfBottles == 0) {
        printf("There are simply no more bottles of beer to the wall!");
    }else{
        printf("%d bottles of beer on the wall. %d bottles of beer!\n",
               numOfBottles, numOfBottles);
        int oneFewer = numOfBottles - 1;
        printf("One down, pass it around, %d bottles of beer on the wall.\n",
               oneFewer);
        singTheSong(oneFewer);
        printf("Put a bottle in the recycling , %d bottles of beer on in the bin\",
               numOfBottles);
    }
}
int main(int argc, const char * argv[]) {
    singTheSong(99);
    return 0;
}
