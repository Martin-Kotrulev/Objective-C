//
//  _1_TahDoodleTests.m
//  11.TahDoodleTests
//
//  Created by Martin Kotrulev on 11/28/14.
//  Copyright (c) 2014 Martin Kotrulev. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <XCTest/XCTest.h>

@interface _1_TahDoodleTests : XCTestCase

@end

@implementation _1_TahDoodleTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
