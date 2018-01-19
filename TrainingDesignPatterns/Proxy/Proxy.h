//
//  Proxy.h
//  TrainingDesignPatterns
//
//  Created by wxd on 2017/12/28.
//  Copyright © 2017年 wxd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GiveGift.h"
#import "SchoolGirl.h"

//代理对象
@interface Proxy : NSObject<GiveGift>

/**
 代理对象

 @param schoolGirl 姑娘
 @return 代理对象
 */
- (instancetype)initWithSchoolGirl:(SchoolGirl *)schoolGirl;

@end
