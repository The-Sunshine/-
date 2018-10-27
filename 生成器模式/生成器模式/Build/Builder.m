
//
//  Builder.m
//  生成器模式
//
//  Created by eagle on 2018/10/10.
//  Copyright © 2018 eagle. All rights reserved.
//

#import "Builder.h"

@implementation Builder

-(void)buildAllParts
{
    NSLog(@"%@",[self.engine build]);
    NSLog(@"%@",[self.wheel build]);
    NSLog(@"%@",[self.door build]);
    
    NSLog(@"%@",[self.engine engine]);
    NSLog(@"%@",[self.wheel wheel]);
    NSLog(@"%@",[self.door door]);

    NSMutableDictionary * dic = [NSMutableDictionary dictionaryWithCapacity:3];
    dic[@"engine"] = [self.engine information];
    dic[@"wheel"] = [self.wheel information];
    dic[@"door"] = [self.door information];
    
    self.productDic = dic;
}

@end
