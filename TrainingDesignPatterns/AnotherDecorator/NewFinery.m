//
//  NewFinery.m
//  TrainingDesignPatterns
//
//  Created by wxd on 2018/1/2.
//  Copyright © 2018年 wxd. All rights reserved.
//

#import "NewFinery.h"

@implementation NewFinery

- (void)AddComponent:(id<FineryProtocol>)component{
    _originalComponent = component;
}

- (void)dressClothes {
    if (self.originalComponent) {
        [self.originalComponent dressClothes];
    }
}

@end
