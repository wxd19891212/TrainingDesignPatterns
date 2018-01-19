//
//  NewPerson.h
//  TrainingDesignPatterns
//
//  Created by wxd on 2018/1/2.
//  Copyright © 2018年 wxd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FineryProtocol.h"

@interface NewPerson : NSObject<FineryProtocol>
- (instancetype)initWithName:(NSString *)name;
@end
