//
//  OperationDiv.m
//  TrainingDesignPatterns
//
//  Created by wxd on 2017/12/27.
//  Copyright © 2017年 wxd. All rights reserved.
//

#import "OperationDiv.h"

@implementation OperationDiv
-(CGFloat)getResult {
    NSParameterAssert(self.numberB != 0);
    return self.numberA / self.numberB;
}
@end
