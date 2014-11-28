//
//  main.c
//  Degrees
//
//  Created by Martin Kotrulev on 11/11/14.
//  Copyright (c) 2014 Martin Kotrulev. All rights reserved.
//

#include <stdio.h>

// Declare a global variable
static float lastTemperature = 50.0;

float fahrenheutFrimCelsius(float cel){
    lastTemperature = cel;
    float fahr = cel * 1.8 + 32.0;
    printf("%f Celsius is %f Fahrenheit.\n",
           cel, fahr);
    return fahr;
}

int main(int argc, const char * argv[]) {
    float freezeInC = 0;
    float freezeInF = fahrenheutFrimCelsius(freezeInC);
    printf("Water freezes %f degrees Fahrenheit.\n",
           freezeInF);
    printf("The last temerature converted was %f\n",
           lastTemperature);

    return 0;
}
