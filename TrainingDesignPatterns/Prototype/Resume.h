//
//  Resume.h
//  TrainingDesignPatterns
//
//  Created by wxd on 2018/1/3.
//  Copyright © 2018年 wxd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "WorkExperience.h"

@interface Resume : NSObject<NSCopying>
//姓名
@property (copy, nonatomic) NSString *name;
//性别
@property (copy, nonatomic) NSString *sex;
//年龄
@property (copy, nonatomic) NSString *age;
//工作经历
@property (strong, nonatomic) WorkExperience *workExperience;
/**
 实例化简历对象

 @param name 名字
 @return 简历实例
 */
- (instancetype)initWithName:(NSString *)name;

/**
 设置性别和年龄

 @param sex 性别
 @param age 年龄
 */
- (void)setPersonalInfoWithSex:(NSString *)sex age:(NSString *)age;

/**
 设置工作经历

 @param workDate 工作时间区间
 @param company 公司名称
 */
- (void)setWorkExperienceWithWorkDate:(NSString *)workDate company:(NSString *)company;

/**
 显示简历
 */
- (void)display;
@end
