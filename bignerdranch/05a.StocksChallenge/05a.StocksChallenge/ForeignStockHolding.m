//
//  ForeignStockHolding.m
//  05a.StocksChallenge
//
//  Created by Martin Kotrulev on 11/20/14.
//  Copyright (c) 2014 Martin Kotrulev. All rights reserved.
//

#import "ForeignStockHolding.h"

@implementation ForeignStockHolding
@synthesize conversionRate;

-(float)costInDollars
{
    float originalCost = [super costInDollars];
    return originalCost * conversionRate;
}

-(float)valueInDollars
{
    float originalValue = [super valueInDollars];
    return originalValue * conversionRate;
}
@end
