//
//  main.m
//  05.BMITime
//
//  Created by Martin Kotrulev on 11/20/14.
//  Copyright (c) 2014 Martin Kotrulev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Employee.h"
#import "Asset.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Create an array of Employee objects
        NSMutableArray *employees = [[NSMutableArray alloc] init];
        
        // Create a dictionary of executives
        NSMutableDictionary *executives = [[NSMutableDictionary alloc] init];
        
        for (int i = 0; i < 10; i++) {
            
            // Instantiate person object
            Employee *person = [[Employee alloc] init];
            
            // Give the instance variables to work with
            [person setHeightInMeters:1.85 - i/10.0];
            [person setWeightInKilos:84 + i];
            [person setEmployeeId:i];
            
            // Put the employee in the employees array
            [employees addObject:person];
            
            // Is this the firs employee
            if (i == 0) {
                [executives setObject:person forKey:@"CEO"];
            }
            
            // Is this the second employee
            if (i == 1) {
                [executives setObject:person forKey:@"CTO"];
            }
            
        }
        
        NSMutableArray *allAssets = [[NSMutableArray alloc] init];
        // Create 10 assets
        for (int i = 0; i < 10; i++) {
            // Create an asset
            Asset *asset = [[Asset alloc] init];
            
            // Give it ana interesting label
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            [asset setLabel:currentLabel];
            [asset setResaleValue:i * 17];
            
            // Get a random number between 0 and 9 inclusive
            NSUInteger randomIndex = random() % [employees count];
            
            // Find that employee
            Employee *randomEmployee = [employees objectAtIndex:randomIndex];
            
            // Assign the asset to the employee
            [randomEmployee addAssetsObject:asset];
            
            [allAssets addObject:asset];
        }
        
        // Sorting the array
        NSSortDescriptor *voa = [NSSortDescriptor sortDescriptorWithKey:@"valueOfAssets" ascending:YES];
        NSSortDescriptor *ei = [NSSortDescriptor sortDescriptorWithKey:@"employeeId" ascending:YES];
        [employees sortUsingDescriptors:[NSArray arrayWithObjects:voa, ei, nil]];
        
        NSLog(@"Employees: %@", employees);
        
        NSLog(@"Giving ownership of one employee");
        [employees removeObjectAtIndex:5];
        
        NSLog(@"assAssets: %@", allAssets);
        
        NSLog(@"executives: %@", executives);
        executives = nil;
        
        // Filtering and picking only specified elements
        NSPredicate *predicate = [NSPredicate predicateWithFormat:
                                  @"holder.valueOfAssets > 70"];
        NSArray *toBeReclaimed = [allAssets filteredArrayUsingPredicate:predicate];
        NSLog(@"toBeReclaimed: %@", toBeReclaimed);
        toBeReclaimed = nil;
        
        NSLog(@"Giving up ownership of array");
        
        allAssets = nil;
        employees = nil;
    }
    return 0;
}
