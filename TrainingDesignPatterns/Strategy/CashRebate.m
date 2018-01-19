//
//  CashRebate.m
//  TrainingDesignPatterns
//
//  Created by wxd on 2017/12/27.
//  Copyright © 2017年 wxd. All rights reserved.
//

#import "CashRebate.h"
@interface CashRebate ()

@property (nonatomic) CGFloat moneyRebate;

@end

@implementation CashRebate

- (instancetype)initWithMoneyRebate:(CGFloat)moneyRebate {
    self = [super init];
    if (self) {
        self.moneyRebate = moneyRebate;
    }
    return self;
}

- (CGFloat)acceptCash:(CGFloat)cash {
    return cash * self.moneyRebate;
}

@end
