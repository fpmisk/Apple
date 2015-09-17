//
//  TestIterator.m
//  TestIterator
//
//  Created by fpmi on 17.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <XCTest/XCTest.h>
#import "Apple.h"
#import "Basket.h"

@interface TestIterator : XCTestCase

@end

@implementation TestIterator

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
    NSMutableArray * array = [[NSMutableArray alloc] init];
    
    int count = 0;
    for (int i = 0; i < 6; ++i)
    {
        Apple * apple = [[Apple alloc] initWithSeedCount:[[NSNumber alloc] initWithInt:4]];
        [array addObject: apple];
    }
    Basket * basket = [[Basket alloc] initWithArray:array];
    BasketIterator * iterator = [basket iterator];
    
    while([iterator hasNext])
    {
        [iterator next];
        ++count;
    }
    
    XCTAssertEqual(count, 6, @"YES");
       
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
