//
//  main.m
//  04a.GroceriesChallenge
//
//  Created by Martin Kotrulev on 11/18/14.
//  Copyright (c) 2014 Martin Kotrulev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // Read file as a huge string, ignoring
        // possibility of error
        NSString *myNamesString = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames"
                              encoding:NSUTF8StringEncoding
                              error:NULL];
        NSString *myWordsString = [NSString
                                   stringWithContentsOfFile:@"/usr/share/dict/words"
                                   encoding:NSUTF8StringEncoding error:NULL];
        
        // Separating the string into array by new lines
        NSArray *names = [myNamesString componentsSeparatedByString:@"\n"];
        NSArray *words = [myWordsString
                                 componentsSeparatedByString:@"\n"];
        NSMutableArray *properNames = [NSMutableArray array];
        
        // Adding proper names
        for (NSString *a in words){
            for (NSString *b in names){
                if ([a caseInsensitiveCompare:b] == NSOrderedSame) {
                    [properNames addObject:b];
                }
            }
        }
        
        for (NSString *properName in properNames){
            NSLog(@"%@", properName);
        }
    }
    return 0;
}
