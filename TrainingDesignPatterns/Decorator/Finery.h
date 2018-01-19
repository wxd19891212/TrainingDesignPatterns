//
//  Finery.h
//  TrainingDesignPatterns
//
//  Created by wxd on 2017/12/27.
//  Copyright © 2017年 wxd. All rights reserved.
//

#import "Person.h"
//装饰类
@interface Finery : Person
@property (nonatomic,strong) Person *originalComponent;

- (void)AddComponent:(Person *)component;

@end
