//
//  ViewController.m
//  ObserverPattern
//
//  Created by wupeng on 2017/2/20.
//  Copyright © 2017年 wupeng. All rights reserved.
//

#import "ViewController.h"
#import "SubscriptionServiceCenter.h"

static NSString *scienceA = @"scienceA";

static NSString *scienceB = @"scienceB";

static NSString *versionA = @"version1.0.0";

static NSString *versionB = @"version2.0.0";

@interface ViewController ()

@end

@implementation ViewController

/*
1. 何为观察者模式？
 当对象间存在一对多关系时，则使用观察者模式（Observer Pattern）。比如，当一个对象被修改时，则会自动通知它的依赖对象。观察者模式属于行为型模式。
2. 如何使用观察者模式？
 一个对象状态改变给其他对象通知的问题，而且要考虑到易用和低耦合，保证高度的协作。一个对象（目标对象）的状态发生改变，所有的依赖对象（观察者对象）都将得到通知，进行广播通知。
3. 观察者模式的优缺点？
 优点：
 观察者和被观察者是抽象耦合的。
 建立一套触发机制。
 缺点：
 如果一个被观察者对象有很多的直接和间接的观察者的话，将所有的观察者都通知到会花费很多时间。
 如果在观察者和观察目标之间有循环依赖的话，观察目标会触发它们之间进行循环调用，可能导致系统崩溃。
 观察者模式没有相应的机制让观察者知道所观察的目标对象是怎么发生变化的，而仅仅只是知道观察目标发生了变化。
 */
- (void)viewDidLoad {
    [super viewDidLoad];
    
    //创建订单号
    [SubscriptionServiceCenter createSubscriptionNumber:scienceA];
    [SubscriptionServiceCenter createSubscriptionNumber:scienceB];
    
    //创建用户
    Customer *customerA = [[Customer alloc] initWithName:@"wupengA"];
    Customer *customerB = [[Customer alloc] initWithName:@"wupengB"];
    
    //添加订阅的用户到指定的刊物
    [SubscriptionServiceCenter addCustomer:customerA withSubscriptionNumber:scienceA];
    [SubscriptionServiceCenter addCustomer:customerB withSubscriptionNumber:scienceA];
    [SubscriptionServiceCenter addCustomer:customerB withSubscriptionNumber:scienceB];

    //发行机构发送消息
    [SubscriptionServiceCenter sendMessage:versionA toSubscriptionNumber:scienceA];
    
    [SubscriptionServiceCenter sendMessage:versionB toSubscriptionNumber:scienceB];
    
//    以下是我的打印信息，正好符合我的设计图的构思，请注意观看
//    2017-02-20 23:37:41.537 ObserverPattern[2676:85820] version1.0.0 scienceA wupengA
//    2017-02-20 23:37:41.538 ObserverPattern[2676:85820] version1.0.0 scienceA wupengB
//    2017-02-20 23:37:41.538 ObserverPattern[2676:85820] version2.0.0 scienceB wupengB
    
}

@end
