//
//  main.m
//  02.TimeSavingChallenge
//
//  Created by Martin Kotrulev on 11/18/14.
//  Copyright (c) 2014 Martin Kotrulev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSTimeZone *myComp = [NSTimeZone systemTimeZone];
        BOOL isSaving = [myComp isDaylightSavingTime];
        
        if (isSaving) {
            NSLog(@"It is daylight saving time!");
        } else {
            NSLog(@"It's not daylight saving time!");
        }
    }
    return 0;
}
