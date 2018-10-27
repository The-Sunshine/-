//
//  GamePadDecorator.m
//  装饰模式
//
//  Created by eagle on 2018/10/4.
//  Copyright © 2018 eagle. All rights reserved.
//

#import "GamePadDecorator.h"
#import "GamePad.h"

@interface GamePadDecorator ()

@property (nonatomic,strong) GamePad * game;


@end
@implementation GamePadDecorator

-(instancetype)init
{
    self = [super init];
    
    if (self) {
        self.game = [[GamePad alloc]init];
    }
    return self;
}

- (void)up
{
    [self.game up];
}

- (void)down
{
    [self.game down];
}
@end
