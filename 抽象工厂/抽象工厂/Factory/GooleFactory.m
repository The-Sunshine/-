//
//  GooleFactory.m
//  抽象工厂2
//
//  Created by eagle on 2018/10/5.
//  Copyright © 2018 eagle. All rights reserved.
//

#import "GooleFactory.h"

@implementation GooleFactory

- (BasePhone *)createPhone
{
    return [[Android alloc]init];
}

- (BaseWatch *)createWatch
{
    return [[AndroidWatch alloc]init];
}

@end
