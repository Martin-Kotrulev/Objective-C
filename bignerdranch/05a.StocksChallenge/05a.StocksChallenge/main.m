//
//  main.m
//  05a.StocksChallenge
//
//  Created by Martin Kotrulev on 11/20/14.
//  Copyright (c) 2014 Martin Kotrulev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"
#import "ForeignStockHolding.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        StockHolding *first = [[StockHolding alloc] init];
        [first setNumberOfShares:10];
        [first setCurrentSharePrice:15.4];
        [first setPurchaseSharePrice:21.5];
        
        StockHolding *second = [[StockHolding alloc] init];
        [second setNumberOfShares:5];
        [second setCurrentSharePrice:12.3];
        [second setPurchaseSharePrice:15.7];
        
        StockHolding *third = [[StockHolding alloc] init];
        [third setNumberOfShares:15];
        [third setCurrentSharePrice:7.8];
        [third setPurchaseSharePrice:11.8];
        
        ForeignStockHolding *thirdInLeva = [[ForeignStockHolding alloc] init];
        [thirdInLeva setNumberOfShares:[third numberOfShares]];
        [thirdInLeva setCurrentSharePrice:[third currentSharePrice]];
        [thirdInLeva setPurchaseSharePrice:[third purchaseSharePrice]];
        
        NSMutableArray *stockHoldings = [NSMutableArray array];
        [stockHoldings addObject:first];
        [stockHoldings addObject:second];
        [stockHoldings addObject:third];
        [stockHoldings addObject:thirdInLeva];
        
        for (ForeignStockHolding *current in stockHoldings){
            if ([current isKindOfClass:[ForeignStockHolding class]])
            {
                [current setConversionRate:1.5];
                NSLog(@"Value in leva: %f, Cost in leva: %f", [current costInDollars],
                  [current valueInDollars]);
            } else {
                NSLog(@"Value in dollars: %f, Cost in dollars: %f", [current costInDollars],
                      [current valueInDollars]);
            }
        }
    }
    return 0;
}
