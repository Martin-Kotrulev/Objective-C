//
//  ForeignStockHolding.h
//  05a.StocksChallenge
//
//  Created by Martin Kotrulev on 11/20/14.
//  Copyright (c) 2014 Martin Kotrulev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"

@interface ForeignStockHolding : StockHolding
{
    float conversionRate;
}
@property float conversionRate;

@end
