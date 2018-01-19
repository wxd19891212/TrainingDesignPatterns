//
//  CashContext.m
//  TrainingDesignPatterns
//
//  Created by wxd on 2017/12/27.
//  Copyright © 2017年 wxd. All rights reserved.
//

#import "CashContext.h"
#import "CashNormal.h"
#import "CashRebate.h"
#import "CashReturn.h"

@interface CashContext ()

@property (strong, nonatomic) CashSuper *cashSuper;

@end

@implementation CashContext
//一般工厂方法创建业务实例对象保存给工厂类实例
- (instancetype)initWithPaymentType:(PaymentType)paymentType {
    self = [super init];
    if (self) {
        switch (paymentType) {
            case PaymentTypeCashNormal:
                self.cashSuper = [[CashNormal alloc] init];
                break;
            case PaymentTypeCashRebate:
                self.cashSuper = [[CashRebate alloc] initWithMoneyRebate:0.8];
                break;
            case PaymentTypeCashReturn:
                self.cashSuper = [[CashReturn alloc] initWithMoneyCondition:300 moneyReturn:100];
                break;
            default:
                break;
        }
        
    }
    return self;
}

- (CGFloat)getResult:(CGFloat)money {
    //工厂类实例对象调用自身业务方法
    return [self.cashSuper acceptCash:money];
}

@end
