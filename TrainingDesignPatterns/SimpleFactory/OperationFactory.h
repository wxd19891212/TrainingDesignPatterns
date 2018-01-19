//
//  OperationFactory.h
//  TrainingDesignPatterns
//
//  Created by wxd on 2017/12/27.
//  Copyright © 2017年 wxd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Operation.h"

//简单的工厂类
@interface OperationFactory : NSObject


/**
 简单的工厂方法用于创建运算实例

 @param operationType 运算类型
 @return 运算实例
 */
+ (Operation *)createOperation:(OperationType) operationType;

@end
