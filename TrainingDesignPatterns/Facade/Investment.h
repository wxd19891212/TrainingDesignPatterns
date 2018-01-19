//
//  Investment.h
//  TrainingDesignPatterns
//
//  Created by wxd on 2018/1/18.
//  Copyright © 2018年 wxd. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol OperateProtocol <NSObject>

//买入
- (void)buy;
//卖出
- (void)sell;

@end
