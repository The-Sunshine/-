//
//  Door.m
//  生成器模式
//
//  Created by eagle on 2018/10/10.
//  Copyright © 2018 eagle. All rights reserved.
//

#import "Door.h"

@implementation Door

-(id)build
{
    return [NSString stringWithFormat:@"%@ - %@",NSStringFromClass([self class]),NSStringFromSelector(_cmd)];
}

-(id)information
{
    return @"Door - information";
}
-(NSString *)door
{
    return @"door";
}
@end
