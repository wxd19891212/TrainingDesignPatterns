//
//  VolunteerFactory.m
//  TrainingDesignPatterns
//
//  Created by wxd on 2017/12/29.
//  Copyright © 2017年 wxd. All rights reserved.
//

#import "VolunteerFactory.h"
#import "Volunteer.h"

@implementation VolunteerFactory
- (id<ILeiFeng>)createLeiFeng{
    return [[Volunteer alloc] init];
}
@end
