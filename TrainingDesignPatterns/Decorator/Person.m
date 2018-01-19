//
//  Person.m
//  TrainingDesignPatterns
//
//  Created by wxd on 2017/12/27.
//  Copyright © 2017年 wxd. All rights reserved.
//

#import "Person.h"

@interface Person ()
@property (nonatomic,copy) NSString *name;
@end

@implementation Person

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        self.name = name;
    }
    return self;
}
- (void)show {
    NSLog(@"装扮好的%@",self.name);
}
@end
