//
//  Logger.m
//  08.Callbacks
//
//  Created by Martin Kotrulev on 11/26/14.
//  Copyright (c) 2014 Martin Kotrulev. All rights reserved.
//

#import "Logger.h"

@implementation Logger

- (void)sayOuch:(NSTimer *)timer
{
    NSLog(@"Ouch!");
}

// Called each time a chunk of data arrives
- (void)connection:(NSURLConnection *)connection
    didReceiveData:(NSData *)data
{
    NSLog(@"recieved %lu bytes", [data length]);
    
    // Create mutable data if it doesn't already exist
    if (!incomingData) {
        incomingData = [[NSMutableData alloc] init];
    }
    
    [incomingData appendData:data];
}

// Called when the last chunk has been processed
- (void)connectinDidFinishLoading:(NSURLConnection *)connection
{
    NSLog(@"Got it all!");
    
    NSString *string = [[NSString alloc] initWithData:incomingData
                                             encoding:NSUTF8StringEncoding];
    incomingData = nil;
    NSLog(@"string has is %lu characters", [string length]);
}

// Callef if the fatch fails
- (void)connection:(NSURLConnection *)connection
    didFailWithError:(NSError *)error
{
    NSLog(@"conection failed: %@", [error localizedDescription]);
    incomingData = nil;
}

- (void)zoneChange:(NSNotification *)note
{
    NSLog(@"The system time zone has changed!");
}

@end
