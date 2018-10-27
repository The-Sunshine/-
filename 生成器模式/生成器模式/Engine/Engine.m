//
//  Engine.m
//  生成器模式
//
//  Created by eagle on 2018/10/10.
//  Copyright © 2018 eagle. All rights reserved.
//

#import "Engine.h"

@implementation Engine

-(id)build
{    
    return [NSString stringWithFormat:@"%@ - %@",NSStringFromClass([self class]),NSStringFromSelector(_cmd)];
}

-(id)information
{
    return @"Engine - information";
}

-(NSString *)engine
{
    return @"engine";
}


@end
