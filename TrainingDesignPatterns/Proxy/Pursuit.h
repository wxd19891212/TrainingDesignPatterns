//
//  Pursuit.h
//  TrainingDesignPatterns
//
//  Created by wxd on 2017/12/28.
//  Copyright © 2017年 wxd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GiveGift.h"

//委托者==delegate
@interface Pursuit : NSObject 
@property (strong, nonatomic) NSString *name;
@property (weak, nonatomic) id<GiveGift> delegate;
-(void)SendingOtherGifts;
@end
