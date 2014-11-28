//
//  main.m
//  04.DateList
//
//  Created by Martin Kotrulev on 11/18/14.
//  Copyright (c) 2014 Martin Kotrulev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Crate three NSDate objects
        NSDate *now = [NSDate date];
        NSDate *tommorow = [now dateByAddingTimeInterval:24.0 * 60.0 * 60.0];
        NSDate *yesterday = [now dateByAddingTimeInterval:-24.0 * 60.0 * 60.0];
        
        // Creating array to hold the three dates
        NSArray *dateList = [NSArray arrayWithObjects:now, tommorow, yesterday, nil];
        // Itterating through array
        NSUInteger dateCount = [dateList count];
        for (int i = 0; i < dateCount; i++) {
            NSDate *d = [dateList objectAtIndex:i];
            NSLog(@"Here is the date: %@", d);
        }
        
        // Another way - fast enumeration
        for (NSDate *d in dateList){
            NSLog(@"Here is the date: %@", d);
        }
        
        // Mutable arrays
        NSMutableArray *mutDateList = [NSMutableArray array];
        
        // Add the dates to the array
        [mutDateList addObject:now];
        [mutDateList addObject:tommorow];
        // Adding at index
        [mutDateList insertObject:yesterday atIndex:0];
        
        // Remove yesterday
        [mutDateList removeObjectAtIndex:0];
    }
    return 0;
}
