//
//  CashRebate.h
//  TrainingDesignPatterns
//
//  Created by wxd on 2017/12/27.
//  Copyright © 2017年 wxd. All rights reserved.
//

#import "CashSuper.h"

@interface CashRebate : CashSuper

/**
 初始化折扣实例

 @param moneyRebate 折扣
 @return 初始化折扣实例
 */
- (instancetype)initWithMoneyRebate:(CGFloat)moneyRebate;
@end
