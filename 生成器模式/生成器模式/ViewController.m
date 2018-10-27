//
//  ViewController.m
//  生成器模式
//
//  Created by eagle on 2018/10/10.
//  Copyright © 2018 eagle. All rights reserved.
//

#import "ViewController.h"
#import "Builder.h"
#import "Engine.h"
#import "Wheel.h"
#import "Door.h"

@interface ViewController ()

@end

@implementation ViewController

/*
1. 何为送生成器模式？
 建造者模式（Builder Pattern）使用多个简单的对象一步一步构建成一个复杂的对象。这种类型的设计模式属于创建型模式，它提供了一种创建对象的最佳方式。

2. 如何使用生成器模式？
 主要解决在软件系统中，有时候面临着"一个复杂对象"的创建工作，其通常由各个部分的子对象用一定的算法构成；由于需求的变化，这个复杂对象的各个部分经常面临着剧烈的变化，但是将它们组合在一起的算法却相对稳定。
 一些基本部件不会变，而其组合经常变化的时候。

3. 生成器模式的优缺点？
 优点：
 建造者独立，易扩展。
 便于控制细节风险。
 缺点：
 产品必须有共同点，范围有限制。
 如内部变化复杂，会有很多的建造类。
 使用场景
 需要生成的对象具有复杂的内部结构。
 需要生成的对象内部属性本身相互依赖。
 注意事项：与工厂模式的区别是：建造者模式更加关注与零件装配的顺序。
 */
- (void)viewDidLoad {
    [super viewDidLoad];

    Builder * b = [[Builder alloc]init];
    
    b.engine = [[Engine alloc]init];
    b.wheel = [[Wheel alloc]init];
    b.door = [[Door alloc]init];
    
    [b buildAllParts];
    
    NSLog(@"%@",b.productDic);
}


@end
