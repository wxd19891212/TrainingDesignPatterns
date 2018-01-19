//
//  WorkExperience.h
//  TrainingDesignPatterns
//
//  Created by wxd on 2018/1/3.
//  Copyright © 2018年 wxd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WorkExperience : NSObject<NSCopying>
//工作时间区间
@property (copy, nonatomic) NSString *workDate;
//公司名称
@property (copy, nonatomic) NSString *company;
@end
