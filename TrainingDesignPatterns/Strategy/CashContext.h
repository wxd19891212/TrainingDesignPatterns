//
//  CashContext.h
//  TrainingDesignPatterns
//
//  Created by wxd on 2017/12/27.
//  Copyright © 2017年 wxd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CashSuper.h"

@interface CashContext : NSObject

- (instancetype)initWithPaymentType:(PaymentType)paymentType;

/**
 获得支付金额

 @param money 原价
 @return 支付金额
 */
- (CGFloat)getResult:(CGFloat)money;
@end
