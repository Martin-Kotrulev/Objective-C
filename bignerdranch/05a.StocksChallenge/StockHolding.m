//
//  StockHolding.m
//  05a.StocksChallenge
//
//  Created by Martin Kotrulev on 11/20/14.
//  Copyright (c) 2014 Martin Kotrulev. All rights reserved.
//

#import "StockHolding.h"

@implementation StockHolding

@synthesize numberOfShares, purchaseSharePrice, currentSharePrice;

- (float)costInDollars
{
    float p = [self purchaseSharePrice];
    float n = [self numberOfShares];
    return p * n;
}

- (float)valueInDollars
{
    float c = [self currentSharePrice];
    int n = [self numberOfShares];
    return c * n;
}

@end
