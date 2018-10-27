//
//  FactoryManager.m
//  抽象工厂
//
//  Created by eagle on 2018/10/5.
//  Copyright © 2018 eagle. All rights reserved.
//

#import "FactoryManager.h"

@implementation FactoryManager

+ (BaseFactory *)createManager:(Kfactory)factory
{
    BaseFactory * obj = nil;
    
    if (factory == KAPPLE)
    {
        obj = [[AppleFactory alloc]init];
    }
    else if (factory == KGOOGLE)
    {
        obj = [[GooleFactory alloc]init];
    }
    
    return obj;
}
@end
