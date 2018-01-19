//
//  ResumeDeepCopy.m
//  TrainingDesignPatterns
//
//  Created by wxd on 2018/1/3.
//  Copyright © 2018年 wxd. All rights reserved.
//

#import "ResumeDeepCopy.h"

@implementation ResumeDeepCopy
- (id)copyWithZone:(NSZone *)zone {
    Resume *resume = [[[self class] allocWithZone:zone] init];
    resume.name = [self.name copy];
    resume.sex  = [self.sex copy];
    resume.age  = [self.age copy];
    resume.workExperience = [self.workExperience copy];
    return resume;
}
@end
