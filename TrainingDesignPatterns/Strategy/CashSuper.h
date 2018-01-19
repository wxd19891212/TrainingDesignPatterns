//
//  CashSuper.h
//  TrainingDesignPatterns
//
//  Created by wxd on 2017/12/27.
//  Copyright © 2017年 wxd. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, PaymentType) {
    PaymentTypeCashNormal,
    PaymentTypeCashRebate,
    PaymentTypeCashReturn
};

@interface CashSuper : NSObject

/**
 计算需要支付的价格

 @param cash 原价
 @return 支付价格
 */
- (CGFloat)acceptCash:(CGFloat)cash;
@end
