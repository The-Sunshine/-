//
//  iOS.m
//  抽象工厂2
//
//  Created by eagle on 2018/10/5.
//  Copyright © 2018 eagle. All rights reserved.
//

#import "iOS.h"

@implementation iOS

-(void)phoneCall
{
    NSLog(@"%@ - %@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));
}

-(void)sendMessage
{
    NSLog(@"%@ - %@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));
}

-(void)fingerPrintIndetify
{
    NSLog(@"%@ - %@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));
}
@end
