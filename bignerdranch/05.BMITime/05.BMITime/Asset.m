//
//  Asset.m
//  05.BMITime
//
//  Created by Martin Kotrulev on 11/24/14.
//  Copyright (c) 2014 Martin Kotrulev. All rights reserved.
//

#import "Asset.h"
#import "Employee.h"

@implementation Asset

@synthesize label, resaleValue, holder;

- (NSString *)description
{
    if ([self holder]) {
        return [NSString stringWithFormat:@"<%@: $%d, assigned to %@ >",
                [self label], [self resaleValue], [self holder]];
    } else {
        return [NSString stringWithFormat:@"<%@: $%d unassigned>",
                [self label], [self resaleValue]];
    }
}

- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
