//
//  Logger.h
//  08.Callbacks
//
//  Created by Martin Kotrulev on 11/26/14.
//  Copyright (c) 2014 Martin Kotrulev. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Logger : NSObject
{
    NSMutableData *incomingData;
}
- (void)sayOuch:(NSTimer *)timer;
- (void)zoneChange:(NSNotification *)note;
@end
