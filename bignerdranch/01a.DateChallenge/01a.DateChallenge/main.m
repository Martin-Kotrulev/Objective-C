//
//  main.m
//  01a.DateChallenge
//
//  Created by Martin Kotrulev on 11/18/14.
//  Copyright (c) 2014 Martin Kotrulev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Creating new date from year, month etc.
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear:1988];
        [comps setMonth:9];
        [comps setDay:27];
        [comps setHour:15];
        [comps setMinute:15];
        [comps setSecond:0];
        
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        NSDate *dateOfBirth = [g dateFromComponents:comps];
        
        NSDate *now = [NSDate date];
        double d = [now timeIntervalSinceDate:dateOfBirth];
        
        NSLog(@"I've been alive %f seconds", d);
    }
    return 0;
}
