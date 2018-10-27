//
//  ViewController.m
//  装饰模式
//
//  Created by eagle on 2018/10/4.
//  Copyright © 2018 eagle. All rights reserved.
//

#import "ViewController.h"
#import "GamePadDecorator.h"
#import "GamePad.h"
#import "GamePad+Coin.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    GamePadDecorator * game = [[GamePadDecorator alloc]init];
    [game up];
    [game down];
    
    GamePad * game2 = [[GamePad alloc]init];
    [game2 up];
    game2.coin = 10;
    NSLog(@"game - coin %ld",(long)game2.coin);
}



@end
