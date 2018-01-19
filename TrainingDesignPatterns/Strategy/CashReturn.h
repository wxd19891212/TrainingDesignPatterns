//
//  CashReturn.h
//  TrainingDesignPatterns
//
//  Created by wxd on 2017/12/27.
//  Copyright © 2017年 wxd. All rights reserved.
//

#import "CashSuper.h"

@interface CashReturn : CashSuper

/**
 返回返现实例

 @param moneyCondition 返利条件
 @param moneyReturn 返利值
 @return 返现实例
 */
- (instancetype)initWithMoneyCondition:(CGFloat)moneyCondition moneyReturn:(CGFloat)moneyReturn;
@end
