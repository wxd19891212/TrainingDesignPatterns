//
//  WorkExperience.m
//  TrainingDesignPatterns
//
//  Created by wxd on 2018/1/3.
//  Copyright © 2018年 wxd. All rights reserved.
//

#import "WorkExperience.h"

@implementation WorkExperience
- (id)copyWithZone:(NSZone *)zone {
    WorkExperience *workExperience = [[self class] allocWithZone:zone];
    workExperience.workDate = [self.workDate copy];
    workExperience.company  = [self.company copy];
    return workExperience;
}
@end
