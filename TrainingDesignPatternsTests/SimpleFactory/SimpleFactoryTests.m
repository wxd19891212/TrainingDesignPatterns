//
//  SimpleFactoryTests.m
//  TrainingDesignPatternsTests
//
//  Created by wxd on 2017/12/27.
//  Copyright © 2017年 wxd. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Operation.h"
#import "OperationFactory.h"


@interface SimpleFactoryTests : XCTestCase

@end

@implementation SimpleFactoryTests

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    //[[[XCUIApplication alloc] init] launch];
    NSLog(@"setUp");
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    NSLog(@"tearDown");
}

- (void)testExample {
    // Use recording to get started writing UI tests.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSLog(@"testExample");
}

- (void)testSimpleFactory {
    
    Operation *operation = [OperationFactory createOperation:OperationTypeAdd];
    operation.numberA = 100;
    operation.numberB = 25;
    XCTAssertTrue([operation getResult] == 125);
    
    operation = [OperationFactory createOperation:OperationTypeSub];
    operation.numberA = 100;
    operation.numberB = 75;
    XCTAssertTrue([operation getResult] == 25);
    
    operation = [OperationFactory createOperation:OperationTypeMul];
    operation.numberA = 100;
    operation.numberB = 25;
    XCTAssertTrue([operation getResult] == 2500);
    
    operation = [OperationFactory createOperation:OperationTypeDiv];
    operation.numberA = 100;
    operation.numberB = 25;
    XCTAssertTrue([operation getResult] == 4);
    
    //operation = [[Operation alloc] init];
    //XCTAssertTrue([operation getResult] == 4);
}

@end
