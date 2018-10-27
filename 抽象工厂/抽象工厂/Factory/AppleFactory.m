//
//  AppleFactory.m
//  抽象工厂2
//
//  Created by eagle on 2018/10/5.
//  Copyright © 2018 eagle. All rights reserved.
//

#import "AppleFactory.h"

@implementation AppleFactory

- (BasePhone *)createPhone
{
    return [[iOS alloc]init];
}

-(BaseWatch *)createWatch
{
    return [[IWatch alloc]init];
}

@end
