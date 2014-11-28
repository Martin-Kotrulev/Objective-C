//
//  Person.h
//  05.BMITime
//
//  Created by Martin Kotrulev on 11/20/14.
//  Copyright (c) 2014 Martin Kotrulev. All rights reserved.
//

#import <Foundation/Foundation.h>

// The class Person inherits all the instance
// variables and methods defined by the class NSObject

@interface Person : NSObject
{
    // Instance variables
    float heightInMeters;
    int weightInKilos;
}

@property float heightInMeters;
@property int weightInKilos;

// Method for calculating body mass index
- (float)bodyMassIndex;
@end
