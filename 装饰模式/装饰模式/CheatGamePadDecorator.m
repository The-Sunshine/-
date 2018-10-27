//
//  CheatGameDecorator.m
//  装饰模式
//
//  Created by eagle on 2018/10/5.
//  Copyright © 2018 eagle. All rights reserved.
//

#import "CheatGamePadDecorator.h"

@implementation CheatGamePadDecorator

-(void)cheap
{
    [self up];
    
    [self down];
}
@end
