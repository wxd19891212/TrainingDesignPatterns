//
//  DecoratorTests.m
//  TrainingDesignPatternsTests
//
//  Created by wxd on 2017/12/27.
//  Copyright © 2017年 wxd. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Person.h"
#import "TShirts.h"
#import "BigTrouser.h"
#import "Sneakers.h"

#import "NewPerson.h"
#import "NewTShirts.h"
#import "NewBigTrouser.h"
#import "NewSneakers.h"

@interface DecoratorTests : XCTestCase

@end

@implementation DecoratorTests

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

- (void)testDecorator {
    NSLog(@"开始穿衣服");
//    Person *xc = [[Person alloc] initWithName:@"小菜"];
//
//    TShirts *dtx = [[TShirts alloc] init];
//    BigTrouser *kk = [[BigTrouser alloc] init];
//    Sneakers *pqx = [[Sneakers alloc] init];
//
//    [pqx AddComponent:xc];
//    [kk AddComponent:pqx];
//    [dtx AddComponent:kk];
//    [dtx show];
    
    NewPerson *nxc = [[NewPerson alloc] initWithName:@"新小菜"];
    
    NewTShirts *ndtx = [[NewTShirts alloc] init];
    NewBigTrouser *nkk = [[NewBigTrouser alloc] init];
    NewSneakers *npqx = [[NewSneakers alloc] init];
    
    [npqx AddComponent:nxc];
    [nkk AddComponent:npqx];
    [ndtx AddComponent:nkk];
    
    [ndtx dressClothes];
    
}

@end
