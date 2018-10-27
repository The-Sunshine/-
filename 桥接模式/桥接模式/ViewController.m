//
//  ViewController.m
//  桥接2
//
//  Created by eagle on 2018/10/8.
//  Copyright © 2018 eagle. All rights reserved.
//

#import "ViewController.h"

#import "A_system.h"
#import "A_implement.h"

#import "B_system.h"
#import "B_implement.h"

@interface ViewController ()

@end

@implementation ViewController

/*
1. 何为桥接模式？
 桥接（Bridge）是用于把抽象化与实现化解耦，使得二者可以独立变化。这种类型的设计模式属于结构型模式，它通过提供抽象化和实现化之间的桥接结构，来实现二者的解耦。
 这种模式涉及到一个作为桥接的接口，使得实体类的功能独立于接口实现类。这两种类型的类可被结构化改变而互不影响。
2. 如何使用桥接模式？
 在有多种可能会变化的情况下，用继承会造成类爆炸问题，扩展起来不灵活。
 实现系统可能有多个角度分类，每一种角度都可能变化。
 把这种多角度分类分离出来，让它们独立变化，减少它们之间耦合。
3. 桥接模式的优缺点？
 优点 ：抽象和实现的分离、优秀的扩展能力、实现细节对客户透明。
 缺点：桥接模式的引入会增加系统的理解与设计难度，由于聚合关联关系建立在抽象层，要求开发者针对抽象进行设计与编程。
 */

- (void)viewDidLoad {
    [super viewDidLoad];
    
    A_system * a = [[A_system alloc]init];
    a.implement = [[A_implement alloc]init];
    
    [a aFunction];
    [a loadSystem];
    [a common_up];
    
    B_system * b = [[B_system alloc]init];
    b.implement = [[B_implement alloc]init];
    
    [b bFunction];
    [b loadSystem];
    
    [b common_down];
    [b common_left];
    [b.implement loadCommon:k_left];
}


@end
