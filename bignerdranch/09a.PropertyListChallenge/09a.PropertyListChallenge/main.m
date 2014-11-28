//
//  main.m
//  09a.PropertyListChallenge
//
//  Created by Martin Kotrulev on 11/27/14.
//  Copyright (c) 2014 Martin Kotrulev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableArray *allKinds = [[NSMutableArray alloc] init];
        
        NSMutableDictionary *dict;
        NSString *str;
        NSData *data;
        NSDate *date;
        NSNumber *number;
        NSArray *arr;
        
        dict = [NSMutableDictionary dictionary];
        [dict setObject:@"martin" forKey:@"name"];
        [allKinds addObject:dict];
        
        str = [NSString stringWithFormat:@"some string"];
        [allKinds addObject:str];
        
        data = [NSData dataWithContentsOfFile:@"/tmp/stocks.plist"];
        [allKinds addObject:data];
        
        date = [NSDate date];
        [allKinds addObject:date];
        
        number = [NSNumber numberWithBool:YES];
        [allKinds addObject:number];
        
        arr = [NSArray arrayWithContentsOfFile:@"/tmp/stocks.plist"];
        [allKinds addObject:arr];
        
        for (int i = 0; i < [allKinds count]; i++) {
            NSLog(@"%@", [allKinds objectAtIndex:i]);
        }
        
        
    }
    return 0;
}
