//
//  CashReturn.m
//  TrainingDesignPatterns
//
//  Created by wxd on 2017/12/27.
//  Copyright © 2017年 wxd. All rights reserved.
//

#import "CashReturn.h"

@interface CashReturn ()

@property (nonatomic) CGFloat moneyCondition;
@property (nonatomic) CGFloat moneyReturn;

@end

@implementation CashReturn

- (instancetype)initWithMoneyCondition:(CGFloat)moneyCondition moneyReturn:(CGFloat)moneyReturn {
    self = [super init];
    if (self) {
        self.moneyCondition = moneyCondition;
        self.moneyReturn    = moneyReturn;
    }
    return self;
}

- (CGFloat)acceptCash:(CGFloat)cash {
    return cash >= self.moneyCondition ? cash - floorf(cash / self.moneyCondition) * self.moneyReturn : cash;
}
@end
