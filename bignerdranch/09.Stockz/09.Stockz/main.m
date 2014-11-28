//
//  main.m
//  09.Stockz
//
//  Created by Martin Kotrulev on 11/26/14.
//  Copyright (c) 2014 Martin Kotrulev. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableArray *stocks = [[NSMutableArray alloc] init];
        NSMutableDictionary *stock;
        
        stock = [NSMutableDictionary dictionary];
        [stock setObject:@"AAPL"
                  forKey:@"symbol"];
        [stock setObject:[NSNumber numberWithInt:200]
                  forKey:@"shares"];
        [stocks addObject:stock];
        
        stock = [NSMutableDictionary dictionary];
        [stock setObject:@"GOOG"
                  forKey:@"symbol"];
        [stock setObject:[NSNumber numberWithInt:160]
                  forKey:@"shares"];
        
        [stocks writeToFile:@"/tmp/stocks.plist" atomically:YES];
        
        NSArray *stockList = [NSArray arrayWithContentsOfFile:@"/tmp/stocks.plist"];
        
        for (NSDictionary *d in stockList) {
            NSLog(@"I have %@ shares of %@",
                  [d objectForKey:@"shares"], [d objectForKey:@"symbol"]);
        }
    }
    return 0;
}
