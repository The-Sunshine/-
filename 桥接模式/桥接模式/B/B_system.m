//
//  B_system.m
//  桥接2
//
//  Created by eagle on 2018/10/8.
//  Copyright © 2018 eagle. All rights reserved.
//

#import "B_system.h"

@implementation B_system

-(void)common_left
{
    NSLog(@"%@ - %@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));
}

- (void)common_right
{
    NSLog(@"%@ - %@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));
}

-(void)bFunction
{
    NSLog(@"%@ - %@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));
}
@end
