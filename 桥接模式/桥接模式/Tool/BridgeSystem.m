//
//  bridgeSystem.m
//  桥接2
//
//  Created by eagle on 2018/10/8.
//  Copyright © 2018 eagle. All rights reserved.
//

#import "BridgeSystem.h"

@implementation BridgeSystem

- (void)common_up
{
    [self.implement loadCommon:k_up];
}

-(void)common_down
{
    [self.implement loadCommon:k_down];
}

-(void)loadSystem
{
    NSLog(@"%@ - %@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));
}
@end
