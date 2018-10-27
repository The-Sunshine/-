//
//  a_system.m
//  桥接2
//
//  Created by eagle on 2018/10/8.
//  Copyright © 2018 eagle. All rights reserved.
//

#import "A_system.h"

@implementation A_system

-(void)loadSystem
{
    NSLog(@"%@ - %@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));
}

-(void)aFunction
{
    NSLog(@"%@ - %@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));
}

@end
