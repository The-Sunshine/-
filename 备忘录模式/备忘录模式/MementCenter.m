//
//  MementCenter.m
//  备忘录模式
//
//  Created by eagle on 2018/10/9.
//  Copyright © 2018 eagle. All rights reserved.
//

#import "MementCenter.h"

@implementation MementCenter

+(void)saveFrame:(id<Protocol>)obj Key:(NSString *)key
{
    id data = [obj currentFrame];
    
    if (data) {
        [[NSUserDefaults standardUserDefaults]setObject:data forKey:key];
    }
}

+(id)removeFrameKey:(NSString *)key
{
    return [[NSUserDefaults standardUserDefaults]objectForKey:key];
}
@end
