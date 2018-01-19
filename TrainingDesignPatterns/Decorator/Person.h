//
//  Person.h
//  TrainingDesignPatterns
//
//  Created by wxd on 2017/12/27.
//  Copyright © 2017年 wxd. All rights reserved.
//

#import <Foundation/Foundation.h>
//需要装饰的实例
@interface Person : NSObject
- (instancetype)initWithName:(NSString *)name;
- (void)show;
@end
