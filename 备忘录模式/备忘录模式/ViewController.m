//
//  ViewController.m
//  备忘录模式
//
//  Created by eagle on 2018/10/9.
//  Copyright © 2018 eagle. All rights reserved.
//

#import "ViewController.h"
#import "ZYQView.h"
#import "NSObject+Center.h"

@interface ViewController ()

@end

@implementation ViewController

/*
1.何为备忘录模式？
备忘录模式（Memento Pattern）保存一个对象的某个状态，以便在适当的时候恢复对象。备忘录模式属于行为型模式。

2.如何使用备忘录模式？
很多时候我们总是需要记录一个对象的内部状态，这样做的目的就是为了允许用户取消不确定或者错误的操作，能够恢复到他原先的状态，使得他有"后悔药"可吃。
3.备忘录模式的优缺点？
优点：
给用户提供了一种可以恢复状态的机制，可以使用户能够比较方便地回到某个历史的状态。
实现了信息的封装，使得用户不需要关心状态的保存细节。
缺点：
消耗资源。如果类的成员变量过多，势必会占用比较大的资源，而且每一次保存都会消耗一定的内存。
*/
- (void)viewDidLoad {
    [super viewDidLoad];
    
    ZYQView * view = [[ZYQView alloc]init];
    view.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:view];
    
    [view saveKey:@"frame"];
    
    [view showAnimationFromKey:@"frame"];
}


@end
