//
//  ViewController.m
//  单例模式
//
//  Created by eagle on 2018/10/9.
//  Copyright © 2018 eagle. All rights reserved.
//

#import "ViewController.h"
#import "Singleton.h"
#import "child.h"

@interface ViewController ()

@end

@implementation ViewController

/*
1. 何为单例模式？
 这种模式涉及到一个单一的类，该类负责创建自己的对象，同时确保只有单个对象被创建。这个类提供了一种访问其唯一的对象的方式，可以直接访问，不需要实例化该类的对象。
 注意：
 单例类只能有一个实例。
 单例类必须自己创建自己的唯一实例。
 单例类必须给所有其他对象提供这一实例。
2. 如何使用单例模式？
 当您想控制实例数目，节省系统资源的时候。
3. 单例模式的优缺点？
 优点：
 在内存里只有一个实例，减少了内存的开销，尤其是频繁的创建和销毁实例（比如管理学院首页页面缓存）。
 避免对资源的多重占用比如写文件操作。
 缺点：
 
 没有接口，不能继承，与单一职责原则冲突，一个类应该只关心内部逻辑，而不关心外面怎么样来实例化。
 */

- (void)viewDidLoad {
    [super viewDidLoad];
 
    // shareManager一次初始化
    
    Singleton * single = [Singleton shareManager];
//    single.name = @"able";

//    NSLog(@"%@ - %@",single,[Singleton shareManager]);
//
//    // alloc init 会重新创建内存 已写入崩溃
//    NSLog(@"%@",[[Singleton alloc]init]);
//
//    NSLog(@"%@",single.name);
    
    // 子类继承并使用alloc init || shareManager 已写入崩溃
//    child * c = [[child alloc]init];

//    child * c = [child shareManager];
    
}


@end
