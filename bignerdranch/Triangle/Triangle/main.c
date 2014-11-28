//
//  main.c
//  Triangle
//
//  Created by Martin Kotrulev on 11/11/14.
//  Copyright (c) 2014 Martin Kotrulev. All rights reserved.
//

#include <stdio.h>
float remainingAngle(float angleA, float angleB){
    return 180 - (angleA + angleB);
}
int main(int argc, const char * argv[]) {
    float angleA = 30.0;
    float angleB = 60.0;
    float angleC = remainingAngle(angleA, angleB);
    printf("Angle C is %f degrees.\n",
           angleC);

    return 0;
}
