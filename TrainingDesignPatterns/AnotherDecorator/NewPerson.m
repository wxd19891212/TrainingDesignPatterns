//
//  NewPerson.m
//  TrainingDesignPatterns
//
//  Created by wxd on 2018/1/2.
//  Copyright © 2018年 wxd. All rights reserved.
//

#import "NewPerson.h"

@interface NewPerson ()
@property (nonatomic,copy) NSString *name;
@end

@implementation NewPerson

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        self.name = name;
    }
    return self;
}
- (void)dressClothes {
    NSLog(@"装扮好的%@",self.name);
}

@end
