//
//  Fund.m
//  TrainingDesignPatterns
//
//  Created by wxd on 2018/1/18.
//  Copyright © 2018年 wxd. All rights reserved.
//

#import "Fund.h"
#import "Investment.h"
#import "Stock1.h"
#import "Stock2.h"
#import "Stock3.h"
#import "NationalDebt.h"
#import "Realty.h"
#import "Investor.h"

@interface Fund()
@property(nonatomic,strong)Investor *investor;
@end

@implementation Fund

- (instancetype)initWithInvestor: (Investor *)investor{
    self = [super init];
    if (self) {
        self.investor = investor;
    }
    return self;
}

- (void)buyFund {
    NSLog(@"投资者%@买了%f元基金",self.investor.name,self.investor.money);
    [[[Stock1 alloc] init] buy];
    [[[Stock2 alloc] init] buy];
    [[[Stock3 alloc] init] buy];
    [[[NationalDebt alloc] init] buy];
    [[[Realty alloc] init] buy];
}

- (void)sellFund {
    NSLog(@"投资者%@卖出了%f元基金",self.investor.name,self.investor.money);
    [[[Stock1 alloc] init] sell];
    [[[Stock2 alloc] init] sell];
    [[[Stock3 alloc] init] sell];
    [[[NationalDebt alloc] init] sell];
    [[[Realty alloc] init] sell];
}

@end
