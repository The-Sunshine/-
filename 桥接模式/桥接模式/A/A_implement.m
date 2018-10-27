//
//  a_implement.m
//  桥接2
//
//  Created by eagle on 2018/10/8.
//  Copyright © 2018 eagle. All rights reserved.
//

#import "A_implement.h"

@implementation A_implement

-(void)loadCommon:(kCommonType)commonType
{
    NSLog(@"%@ - %@ - %ld",NSStringFromClass([self class]),NSStringFromSelector(_cmd),commonType);
}
@end
