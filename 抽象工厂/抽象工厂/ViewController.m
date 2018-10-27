//
//  ViewController.m
//  抽象工厂2
//
//  Created by eagle on 2018/10/5.
//  Copyright © 2018 eagle. All rights reserved.
//

#import "ViewController.h"
#import "FactoryManager.h"

@interface ViewController ()

@end

@implementation ViewController

/*
 1.何为工厂模式？
 这种类型的设计模式属于创建型模式，它提供了一种创建对象的最佳方式。
 在工厂模式中，我们在创建对象时不会对客户端暴露创建逻辑，并且是通过使用一个共同的接口来指向新创建的对象。
 
 2.如何使用工厂模式？
 我们明确地计划不同条件下创建不同实例时。
 作为一种创建类模式，在任何需要生成复杂对象的地方，都可以使用工厂方法模式。有一点需要注意的地方就是复杂对象适合使用工厂模式，而简单对象，特别是只需要通过 new 就可以完成创建的对象，无需使用工厂模式。如果使用工厂模式，就需要引入一个工厂类，会增加系统的复杂度。
 
 3.工厂模式的优缺点？
 优点：
 一个调用者想创建一个对象，只要知道其名称就可以了。
 扩展性高，如果想增加一个产品，只要扩展一个工厂类就可以。
 屏蔽产品的具体实现，调用者只关心产品的接口。
 缺点：
 每次增加一个产品时，都需要增加一个具体类和对象实现工厂，使得系统中类的个数成倍增加，在一定程度上增加了系统的复杂度，同时也增加了系统具体类的依赖。这并不是什么好事。
 
 4.抽象工厂模式
 抽象工厂模式（Abstract Factory Pattern）是围绕一个超级工厂创建其他工厂。该超级工厂又称为其他工厂的工厂。这种类型的设计模式属于创建型模式，它提供了一种创建对象的最佳方式。
 在抽象工厂模式中，接口是负责创建一个相关对象的工厂，不需要显式指定它们的类。每个生成的工厂都能按照工厂模式提供对象。
*/
- (void)viewDidLoad {
    [super viewDidLoad];

    BaseFactory * appleManager = [FactoryManager createManager:KAPPLE];
    
    iOS * i = (iOS *)[appleManager createPhone];
    
    [i phoneCall];
    [i sendMessage];
    [i fingerPrintIndetify];
    
    IWatch * watch = (IWatch *)[appleManager createWatch];
    
    
    // android
    BaseFactory * gooleManager = [FactoryManager createManager:KGOOGLE];
    
    Android * a = (Android *)[gooleManager createPhone];
    
    [a phoneCall];
    [a sendMessage];
    [a customTheme];
    
    AndroidWatch * aWatch = (AndroidWatch *)[gooleManager createWatch];
    
    
}


@end
