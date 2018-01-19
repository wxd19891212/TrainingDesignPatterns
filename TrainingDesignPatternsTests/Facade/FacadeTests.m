//
//  FacadeTests.m
//  TrainingDesignPatternsTests
//
//  Created by wxd on 2018/1/18.
//  Copyright © 2018年 wxd. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Fund.h"
#import "Investor.h"

@interface FacadeTests : XCTestCase

@end

@implementation FacadeTests

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
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

- (void)testFacade {
    Investor *investor = [[Investor alloc] init];
    investor.name = @"小菜";
    investor.money = 12345;
    Fund *fund =[[Fund alloc] initWithInvestor:investor];
    [fund buyFund];
    [fund sellFund];
}

@end
