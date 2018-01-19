//
//  Fund.h
//  TrainingDesignPatterns
//
//  Created by wxd on 2018/1/18.
//  Copyright © 2018年 wxd. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Investor;

@interface Fund : NSObject
- (instancetype)initWithInvestor: (Investor *)investor;
- (void)buyFund;
- (void)sellFund;
@end
