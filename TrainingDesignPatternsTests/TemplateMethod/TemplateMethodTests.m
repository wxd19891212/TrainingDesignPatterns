//
//  TemplateMethodTests.m
//  TrainingDesignPatternsTests
//
//  Created by wxd on 2018/1/18.
//  Copyright © 2018年 wxd. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "TestPaperStudentA.h"
#import "TestPaperStudentB.h"

@interface TemplateMethodTests : XCTestCase

@end

@implementation TemplateMethodTests

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

- (void)testTemplateMethod {
    
    NSLog(@"同学A的试卷");
    TestPaper *testPaperStudentA = [[TestPaperStudentA alloc] init];
    [testPaperStudentA testQuestion1];
    [testPaperStudentA testQuestion2];
    [testPaperStudentA testQuestion3];
    
    NSLog(@"同学B的试卷");
    TestPaper *testPaperStudentB = [[TestPaperStudentB alloc] init];
    [testPaperStudentB testQuestion1];
    [testPaperStudentB testQuestion2];
    [testPaperStudentB testQuestion3];
}


@end
