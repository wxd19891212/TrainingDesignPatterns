//
//  Operation.m
//  TrainingDesignPatterns
//
//  Created by wxd on 2017/12/27.
//  Copyright © 2017年 wxd. All rights reserved.
//

#import "Operation.h"

@implementation Operation
- (CGFloat)getResult {
    NSAssert(NO, @"%s must be overridden by subclasses", __func__);
    return 0;
}
@end
