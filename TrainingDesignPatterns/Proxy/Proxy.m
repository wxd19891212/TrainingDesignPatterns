//
//  Proxy.m
//  TrainingDesignPatterns
//
//  Created by wxd on 2017/12/28.
//  Copyright © 2017年 wxd. All rights reserved.
//

#import "Proxy.h"
#import "Pursuit.h"

@interface Proxy()
//@property(nonatomic,strong)Pursuit *pursuit;
@property(nonatomic,strong)SchoolGirl *schoolGirl;
@end

@implementation Proxy
- (instancetype)initWithSchoolGirl:(SchoolGirl *)schoolGirl {
    self = [super init];
    if (self) {
        self.schoolGirl = schoolGirl;
    }
    return self;
}
//实现送洋娃娃
- (void)giveDolls:(Pursuit*)pursuit {
    NSLog(@"%@ 这是%@送给你洋娃娃", self.schoolGirl.name,pursuit.name);
}
//实现送花
- (void)giveFlowers:(Pursuit*)pursuit {
    NSLog(@"%@ 这是%@送给你的鲜花", self.schoolGirl.name,pursuit.name);
}
//实现送巧克力
- (void)giveChocolate:(Pursuit*)pursuit {
    NSLog(@"%@ 这是%@送给你巧克力", self.schoolGirl.name,pursuit.name);
}

@end
