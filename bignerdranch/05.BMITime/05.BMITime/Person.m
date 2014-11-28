//
//  Person.m
//  05.BMITime
//
//  Created by Martin Kotrulev on 11/20/14.
//  Copyright (c) 2014 Martin Kotrulev. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize heightInMeters;
@synthesize weightInKilos;

- (float)bodyMassIndex;
{
    float h = [self heightInMeters];
    return [self weightInKilos] / (h * h);
}

@end