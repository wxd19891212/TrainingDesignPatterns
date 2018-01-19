//
//  OperationFactory.m
//  TrainingDesignPatterns
//
//  Created by wxd on 2017/12/27.
//  Copyright © 2017年 wxd. All rights reserved.
//

#import "OperationFactory.h"
#import "OperationAdd.h"
#import "OperationSub.h"
#import "OperationMul.h"
#import "OperationDiv.h"

@implementation OperationFactory
//一般工厂方法返回业务实例
+ (Operation *)createOperation:(OperationType) operationType {
    
    switch (operationType) {
        case OperationTypeAdd:
        {
            return [[OperationAdd alloc] init];
        }
            break;
        case OperationTypeSub:
        {
            return [[OperationSub alloc] init];
        }
            break;
        case OperationTypeMul:
        {
            return [[OperationMul alloc] init];
        }
            break;
        case OperationTypeDiv:
        {
            return [[OperationDiv alloc] init];
        }
            break;
        default:
            return nil;
            break;
    }
}

@end
