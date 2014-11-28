//
//  AppDelegate.h
//  10.iTahDoodle
//
//  Created by Martin Kotrulev on 11/27/14.
//  Copyright (c) 2014 Martin Kotrulev. All rights reserved.
//

#import <UIKit/UIKit.h>

// Helper function to get the path to the save file of the app
NSString *docPath(void);

@interface AppDelegate : UIResponder <UIApplicationDelegate, UITableViewDataSource>
{
    UITableView *taskTable;
    UITextField *taskField;
    UIButton *insertButton;
    
    NSMutableArray *tasks;
}

- (void)addTask:(id)sender;
@property (strong, nonatomic) UIWindow *window;


@end

