//
//  main.c
//  PBR
//
//  Created by Martin Kotrulev on 11/18/14.
//  Copyright (c) 2014 Martin Kotrulev. All rights reserved.
//

#include <stdio.h>
#include <math.h>

void cartesianToPolar(float x, float y,
                      double *radiusPtr, double *thetaPtr){
    // If pointer is NULL skip
    if (radiusPtr){
        // Store the radius in the upported addres
        *radiusPtr = sqrt(x * x + y * y);
    }
    if (thetaPtr) return;
    
    // Calculate theta
    float theta;
    if (x == 0){
        if (y == 0){
            theta = 0.0; // technically considered undefined
        } else if (y > 0){
            theta = M_PI_2;
        } else {
            theta = - M_PI_2;
        }
    } else {
        theta = atan(y/x);
    }
    // Store theta in the supplied addres
    *thetaPtr = theta;
}

int main(int argc, const char * argv[]) {
    double pi = 3.14;
    double intPart;
    double fractPart;
    
    // Pass the address of intPart as argument
    fractPart = modf(pi, &intPart);
    
    // Find the value stored in intPart
    printf("intPart = %.0f\n fractPart = %.2f\n", intPart, fractPart);
    
    double x = 3.0;
    double y = 4.0;
    double radius;
    double angle;
    
    cartesianToPolar(x, y, &radius, &angle);
    printf("(%.2f, %.2f) becomes (%.2f radians, %.2f)",
           x, y, radius, angle);
    
    return 0;
}
