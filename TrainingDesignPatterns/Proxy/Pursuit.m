//
//  Pursuit.m
//  TrainingDesignPatterns
//
//  Created by wxd on 2017/12/28.
//  Copyright © 2017年 wxd. All rights reserved.
//

#import "Pursuit.h"

@interface Pursuit ()

@end

@implementation Pursuit

-(void)SendingOtherGifts {
    if ([self.delegate respondsToSelector:@selector(giveDolls:)]) {
        [self.delegate giveDolls:self];
    }
    if ([self.delegate respondsToSelector:@selector(giveFlowers:)]) {
        [self.delegate giveFlowers:self];
    }
    if ([self.delegate respondsToSelector:@selector(giveChocolate:)]) {
        [self.delegate giveChocolate:self];
    }
}

@end
