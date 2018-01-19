//
//  FactoryMethodTests.m
//  TrainingDesignPatternsTests
//
//  Created by wxd on 2017/12/29.
//  Copyright © 2017年 wxd. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "UndergraduateFactory.h"
#import "VolunteerFactory.h"

@interface FactoryMethodTests : XCTestCase

@end

@implementation FactoryMethodTests

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

- (void)testFactoryMethod {
   //id<ILeiFengFactory> iLeiFengFactory  = [[UndergraduateFactory alloc] init];
    id<ILeiFengFactory> iLeiFengFactory  = [[VolunteerFactory alloc] init];
   id<ILeiFeng> iLeiFeng = [iLeiFengFactory createLeiFeng];
    [iLeiFeng sweep];
    [iLeiFeng wash];
    [iLeiFeng buyRice];
}

@end
