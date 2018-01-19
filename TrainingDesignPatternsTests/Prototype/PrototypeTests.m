//
//  PrototypeTests.m
//  TrainingDesignPatternsTests
//
//  Created by wxd on 2018/1/3.
//  Copyright © 2018年 wxd. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ResumeShallowCopy.h"
#import "ResumeDeepCopy.h"

@interface PrototypeTests : XCTestCase

@end

@implementation PrototypeTests

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

- (void)testPrototypeShallowCopy {
    Resume *resume1 = [[ResumeShallowCopy alloc] initWithName:@"大鸟"];
    [resume1 setPersonalInfoWithSex:@"男" age:@"29"];
    [resume1 setWorkExperienceWithWorkDate:@"1998-2000" company:@"XX 公司"];
    NSLog(@"Retain count is %ld", CFGetRetainCount((__bridge CFTypeRef)resume1));
    
    Resume *resume2 = [resume1 copy];
    [resume2 setWorkExperienceWithWorkDate:@"1998-2006" company:@"YY 企业"];
    NSLog(@"Retain count is %ld", CFGetRetainCount((__bridge CFTypeRef)resume2));
    
    Resume *resume3 = [resume1 copy];
    [resume3 setPersonalInfoWithSex:@"男" age:@"24"];
    [resume3 setWorkExperienceWithWorkDate:@"1998-2003" company:@"ZZ 企业"];
    NSLog(@"Retain count is %ld", CFGetRetainCount((__bridge CFTypeRef)resume3));
    
    [resume1 display];
    [resume2 display];
    [resume3 display];
}

- (void)testPrototypeDeepCopy {
    Resume *resume1 = [[ResumeDeepCopy alloc] initWithName:@"大鸟"];
    [resume1 setPersonalInfoWithSex:@"男" age:@"29"];
    [resume1 setWorkExperienceWithWorkDate:@"1998-2000" company:@"XX 公司"];
    NSLog(@"Retain count is %ld", CFGetRetainCount((__bridge CFTypeRef)resume1));
    
    Resume *resume2 = [resume1 copy];
    [resume2 setWorkExperienceWithWorkDate:@"1998-2006" company:@"YY 企业"];
    NSLog(@"Retain count is %ld", CFGetRetainCount((__bridge CFTypeRef)resume2));
    
    Resume *resume3 = [resume1 copy];
    [resume3 setPersonalInfoWithSex:@"男" age:@"24"];
    [resume3 setWorkExperienceWithWorkDate:@"1998-2003" company:@"ZZ 企业"];
    NSLog(@"Retain count is %ld", CFGetRetainCount((__bridge CFTypeRef)resume3));
    
    [resume1 display];
    [resume2 display];
    [resume3 display];
}

@end
