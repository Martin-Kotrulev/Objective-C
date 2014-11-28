//
//  Employee.m
//  05.BMITime
//
//  Created by Martin Kotrulev on 11/20/14.
//  Copyright (c) 2014 Martin Kotrulev. All rights reserved.
//

#import "Employee.h"
#import "Asset.h"

@implementation Employee

@synthesize employeeId;

- (void)addAssetsObject:(Asset *)a
{
    // Is assets nil?
    if (!assets) {
        // Create the array
        assets = [[NSMutableSet alloc] init];
    }
    [assets addObject:a];
    [a setHolder:self];
}

- (unsigned int)valueOfAssets
{
    // Sum the resale value of the assets
    unsigned int sum = 0;
    for (Asset *a in assets) {
        sum += [a resaleValue];
    }
    return sum;
}

- (float)bodyMassIndex
{
    // calling the same method in the parrent class using super
    float original = [super bodyMassIndex];
    return original * 0.9;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<Employee %d: $%d in assets>",
            [self employeeId], [self valueOfAssets]];
}

- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
