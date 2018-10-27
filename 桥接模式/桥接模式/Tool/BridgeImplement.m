//
//  BridgeImplement.m
//  桥接2
//
//  Created by eagle on 2018/10/8.
//  Copyright © 2018 eagle. All rights reserved.
//

#import "BridgeImplement.h"

@implementation BridgeImplement

-(void)loadCommon:(kCommonType)commonType
{
    NSLog(@"%@ - %@ - %ld",NSStringFromClass([self class]),NSStringFromSelector(_cmd),(long)commonType);
}

@end
