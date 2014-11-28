//
//  Employee.h
//  05.BMITime
//
//  Created by Martin Kotrulev on 11/20/14.
//  Copyright (c) 2014 Martin Kotrulev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
@class Asset;

@interface Employee : Person
{
    // Instance variable
    int employeeId;
    NSMutableSet *assets;
}
@property int employeeId;
- (void)addAssetsObject:(Asset *)a;
- (unsigned int)valueOfAssets;

@end
