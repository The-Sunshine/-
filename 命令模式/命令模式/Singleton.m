//
//  Singleton.m
//  命令模式
//
//  Created by eagle on 2018/10/10.
//  Copyright © 2018 eagle. All rights reserved.
//

#import "Singleton.h"

@interface Singleton ()

@property (nonatomic,strong) NSMutableArray * array;

@end

@implementation Singleton

+(instancetype)shareInstance
{
    static Singleton * share = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        share = [[Singleton alloc]init];
        share.array = [NSMutableArray array];
    });
    return share;
}

-(void)rollBack
{
    id<protocol> com = self.array.lastObject;
    
    [com backExcute];
    [self.array removeLastObject];
}

-(void)addExcute:(id<protocol>)excute
{
    [excute excute];
    [self.array addObject:excute];
}


@end
