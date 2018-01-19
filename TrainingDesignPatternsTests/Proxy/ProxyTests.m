//
//  ProxyTests.m
//  TrainingDesignPatternsTests
//
//  Created by wxd on 2017/12/29.
//  Copyright © 2017年 wxd. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "SchoolGirl.h"
#import "Proxy.h"
#import "Pursuit.h"

@interface ProxyTests : XCTestCase

@end

@implementation ProxyTests

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

- (void)testProxy {
    SchoolGirl *schoolGirl = [[SchoolGirl alloc] init];
    schoolGirl.name = @"李娇娇";
    Proxy *proxy = [[Proxy alloc] initWithSchoolGirl:schoolGirl];
    Pursuit *pursuit = [[Pursuit alloc] init];
    //设置pursuit的委托对象是Proxy
    pursuit.delegate = proxy;
    pursuit.name = @"李二狗";
    
    [pursuit SendingOtherGifts];
}

@end
