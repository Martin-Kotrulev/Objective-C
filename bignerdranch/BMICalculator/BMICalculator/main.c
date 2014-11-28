//
//  main.c
//  BMICalculator
//
//  Created by Martin Kotrulev on 11/18/14.
//  Copyright (c) 2014 Martin Kotrulev. All rights reserved.
//

#include <stdio.h>

typedef struct {
    float heightInMetters;
    int weightInKilos;
} Person;

float bodyMassIndex(Person p){
    return p.weightInKilos / p.heightInMetters;
}
int main(int argc, const char * argv[]) {
    Person person;
    person.weightInKilos = 96;
    person.heightInMetters = 1.8;
    printf("person weighs %i kilograms\n", person.weightInKilos);
    printf("person is %.2f meters tall\n",
           person.heightInMetters);
    printf("person has a BMI of %.2f\n", bodyMassIndex(person));
    return 0;
}
