//
//  GiveGift.h
//  TrainingDesignPatterns
//
//  Created by wxd on 2017/12/28.
//  Copyright © 2017年 wxd. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Pursuit;

//协议
@protocol GiveGift <NSObject>

//  帮你送洋娃娃
- (void)giveDolls:(Pursuit*)pursuit;

//  帮你送鲜花
- (void)giveFlowers:(Pursuit*)pursuit;

//  帮你送巧克力
- (void)giveChocolate:(Pursuit*)pursuit;

@end
