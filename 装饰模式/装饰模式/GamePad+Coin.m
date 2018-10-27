//
//  GamePad+Coin.m
//  装饰模式
//
//  Created by eagle on 2018/10/5.
//  Copyright © 2018 eagle. All rights reserved.
//

#import "GamePad+Coin.h"
#import <objc/runtime.h>

@implementation GamePad (Coin)

static const NSString * _coinStr = @"coinStr";

-(void)setCoin:(NSInteger)coin
{
    objc_setAssociatedObject(self, (__bridge const void * _Nonnull)(_coinStr), @(coin), OBJC_ASSOCIATION_ASSIGN);
}

-(NSInteger)coin
{
    NSNumber * number = objc_getAssociatedObject(self, (__bridge const void * _Nonnull)(_coinStr));
    return number.integerValue;
}
@end
