//
//  ResumeShallowCopy.m
//  TrainingDesignPatterns
//
//  Created by wxd on 2018/1/3.
//  Copyright © 2018年 wxd. All rights reserved.
//

#import "ResumeShallowCopy.h"

@implementation ResumeShallowCopy
- (id)copyWithZone:(NSZone *)zone {
    Resume *resume = [[[self class] allocWithZone:zone] init];
    resume.name = self.name;
    resume.sex  = self.sex;
    resume.age  = self.age;
    resume.workExperience = self.workExperience;
    return resume;
}
@end
