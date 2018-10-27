//
//  ViewController.m
//  命令模式
//
//  Created by eagle on 2018/10/10.
//  Copyright © 2018 eagle. All rights reserved.
//

#import "ViewController.h"
#import "Receiver.h"
#import "Light.h"
#import "Dark.h"
#import "Singleton.h"

@interface ViewController ()

@end

@implementation ViewController
{
    Receiver * _rec;
}
/*
1. 何为命令模式？
 命令模式（Command Pattern）是一种数据驱动的设计模式，它属于行为型模式。请求以命令的形式包裹在对象中，并传给调用对象。调用对象寻找可以处理该命令的合适的对象，并把该命令传给相应的对象，该对象执行命令。
2. 主要解决的问题？
 在软件系统中，行为请求者与行为实现者通常是一种紧耦合的关系，但某些场合，比如需要对行为进行记录、撤销或重做、事务等处理时，这种无法抵御变化的紧耦合的设计就不太合适。
3. 如何使用命令模式？
 在某些场合，比如要对行为进行"记录、撤销/重做、事务"等处理，这种无法抵御变化的紧耦合是不合适的。在这种情况下，如何将"行为请求者"与"行为实现者"解耦？将一组行为抽象为对象，可以实现二者之间的松耦合。
4. 关键代码？
 定义三个角色：
 received 真正的命令执行对象
 Command
 invoker 使用命令对象的入口
5. 命令模式的优缺点？
 优点：降低了系统耦合度，新的命令可以很容易添加到系统中去。
 缺点：使用命令模式可能会导致某些系统有过多的具体命令类。
6. 使用场景
 认为是命令的地方都可以使用命令模式
*/

- (void)viewDidLoad {
    [super viewDidLoad];

    Receiver * re = [[Receiver alloc]init];
    re.view = self.view;
    _rec = re;
    
    for (NSInteger i = 0 ; i < 3; i ++) {
        
        UIButton * button = ({
            
            UIButton * button = [[UIButton alloc]init];
            button.frame = CGRectMake(100, 100 * i + 150, 100, 60);
            button.tag = 100 + i;
            [button setTitle:@"+" forState:UIControlStateNormal];
            button.backgroundColor = [UIColor yellowColor];
            [button addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
            button;
        });
        [self.view addSubview:button];
    }
}

- (void)click:(UIButton *)sender
{
    NSInteger index = sender.tag - 100;
    
    if (index == 0)
    {
        Light * light = [[Light alloc]initWithReceiver:_rec parameter:.1];
        [[Singleton shareInstance]addExcute:light];
    }
    else if (index == 1)
    {
        Dark * dark = [[Dark alloc]initWithReceiver:_rec parameter:.1];
        [[Singleton shareInstance] addExcute:dark];
    }
    else
    {
        [[Singleton shareInstance] rollBack];
    }
}

@end
