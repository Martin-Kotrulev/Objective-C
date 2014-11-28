//
//  main.m
//  03.NameOfMyComputerChallenge
//
//  Created by Martin Kotrulev on 11/18/14.
//  Copyright (c) 2014 Martin Kotrulev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSHost *myHost = [NSHost currentHost];
        NSString *localName = [myHost localizedName];
        NSLog(@"My computer name is %@", localName);
    }
    return 0;
}
