//
//  StrategyTests.m
//  TrainingDesignPatternsTests
//
//  Created by wxd on 2017/12/27.
//  Copyright © 2017年 wxd. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "CashContext.h"

@interface StrategyTests : XCTestCase

@end

@implementation StrategyTests

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    //[[[XCUIApplication alloc] init] launch];

    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // Use recording to get started writing UI tests.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testStrategy {
    CGFloat result = 0.0;
    CGFloat price  = 100.0;
    CGFloat number = 25;
    CashContext *cashContext = [[CashContext alloc] initWithPaymentType:PaymentTypeCashNormal];
    result = [cashContext getResult:price*number];
    NSLog(@"result: %f", result);
    XCTAssertTrue(result == 2500);
    
    cashContext = [[CashContext alloc] initWithPaymentType:PaymentTypeCashRebate];
    result = [cashContext getResult:price*number];
    NSLog(@"result: %f", result);
    XCTAssertTrue(result == 2500*0.8);
    
    cashContext = [[CashContext alloc] initWithPaymentType:PaymentTypeCashReturn];
    result = [cashContext getResult:price*number];
    NSLog(@"result: %f", result);
    XCTAssertTrue(result == (2500-(2500/300*100)));
    
}

@end
