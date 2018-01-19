//
//  Operation.h
//  TrainingDesignPatterns
//
//  Created by wxd on 2017/12/27.
//  Copyright © 2017年 wxd. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, OperationType) {
    OperationTypeAdd,//加法
    OperationTypeSub,//减法
    OperationTypeMul,//乘法
    OperationTypeDiv//除法
};

//抽象运算类
@interface Operation : NSObject

//操作数A
@property (nonatomic, assign) CGFloat numberA;
//操作数B
@property (nonatomic, assign) CGFloat numberB;
//获得运算结果
- (CGFloat)getResult;

@end
