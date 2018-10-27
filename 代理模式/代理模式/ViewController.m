//
//  ViewController.m
//  代理模式
//
//  Created by eagle on 2018/10/9.
//  Copyright © 2018 eagle. All rights reserved.
//

#import "ViewController.h"
#import "Protocol.h"
#import "Model.h"
#import "Customer.h"

@interface ViewController ()<CustomerDelegate>

@end

@implementation ViewController

/*
1. 何为代理模式？
 在代理模式（Proxy Pattern）中，一个类代表另一个类的功能。这种类型的设计模式属于结构型模式。
 在代理模式中，我们创建具有现有对象的对象，以便向外界提供功能接口。
2. 如何使用代理模式？
 在直接访问对象时带来的问题，比如说：要访问的对象在远程的机器上。在面向对象系统中，有些对象由于某些原因（比如对象创建开销很大，或者某些操作需要安全控制，或者需要进程外的访问），直接访问会给使用者或者系统结构带来很多麻烦，我们可以在访问此对象时加上一个对此对象的访问层。
 想在访问一个类时做一些控制。
3. 代理模式的优缺点？
 优点：
 职责清晰、高扩展性、智能化。
 缺点：
 由于在客户端和真实主题之间增加了代理对象，因此有些类型的代理模式可能会造成请求的处理速度变慢。
 实现代理模式需要额外的工作，有些代理模式的实现非常复杂。
 */

- (void)viewDidLoad {
    [super viewDidLoad];

    Model * m = [[Model alloc]init];
    
    NSLog(@"%@ - %ld",NSStringFromClass([self class]), [m sourceProject]);
    
    NSLog(@"%@ - %ld",NSStringFromClass([self class]), [m destinationPort]);
    
    [self normalDelegate];
}

- (void)normalDelegate
{
    Customer * c = [[Customer alloc]init];
    
    c.delegate = self;
    [c buyItemCount:10];
    
}

-(void)customer:(NSInteger)price
{
    NSLog(@"CustomerDelegate - %ld",price);
}
@end
