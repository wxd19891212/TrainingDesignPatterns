//
//  Finery.m
//  TrainingDesignPatterns
//
//  Created by wxd on 2017/12/27.
//  Copyright © 2017年 wxd. All rights reserved.
//

#import "Finery.h"
@interface Person ()

@end

@implementation Finery

- (void)AddComponent:(Person *)component{
    _originalComponent = component;
}

- (void)show {
    if (self.originalComponent) {
        [self.originalComponent show];
    }
}

@end
