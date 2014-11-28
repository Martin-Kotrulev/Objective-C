//
//  Asset.h
//  05.BMITime
//
//  Created by Martin Kotrulev on 11/24/14.
//  Copyright (c) 2014 Martin Kotrulev. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Employee;

@interface Asset : NSObject
{
    NSString *label;
    unsigned int resaleValue;
    // Avoiding adding ownership 
    __weak Employee *holder;
}
@property (strong) NSString *label;
@property (weak) Employee *holder;
@property unsigned int resaleValue;


@end
