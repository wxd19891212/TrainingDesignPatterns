//
//  NewFinery.h
//  TrainingDesignPatterns
//
//  Created by wxd on 2018/1/2.
//  Copyright © 2018年 wxd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FineryProtocol.h"
#import "Person.h"

@interface NewFinery : NSObject<FineryProtocol>
@property (weak, nonatomic) id<FineryProtocol> originalComponent;

- (void)AddComponent:(id<FineryProtocol>)component;

@end
