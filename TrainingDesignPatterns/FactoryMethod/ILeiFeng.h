//
//  ILeiFeng.h
//  TrainingDesignPatterns
//
//  Created by wxd on 2017/12/29.
//  Copyright © 2017年 wxd. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ILeiFeng <NSObject>
// 扫地
- (void)sweep;
// 洗衣
- (void)wash;
// 买米
- (void)buyRice;
@end
