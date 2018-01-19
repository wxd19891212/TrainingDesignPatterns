//
//  UndergraduateFactory.m
//  TrainingDesignPatterns
//
//  Created by wxd on 2017/12/29.
//  Copyright © 2017年 wxd. All rights reserved.
//

#import "UndergraduateFactory.h"
#import "Undergraduate.h"

@implementation UndergraduateFactory
- (id<ILeiFeng>)createLeiFeng {
    return [[Undergraduate alloc] init];
}
@end
