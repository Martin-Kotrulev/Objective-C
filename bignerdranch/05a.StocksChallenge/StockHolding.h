//
//  StockHolding.h
//  05a.StocksChallenge
//
//  Created by Martin Kotrulev on 11/20/14.
//  Copyright (c) 2014 Martin Kotrulev. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StockHolding : NSObject
{
    int numberOfShares;
    float purchaseSharePrice;
    float currentSharePrice;
}
@property int numberOfShares;
@property float purchaseSharePrice;
@property float currentSharePrice;

- (float)costInDollars; // purchaseSharePrice * numberOfShares
- (float)valueInDollars; // currentSharePrice * numberOfShares

@end
