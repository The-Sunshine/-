//
//  NSObject+Center.m
//  备忘录模式
//
//  Created by eagle on 2018/10/9.
//  Copyright © 2018 eagle. All rights reserved.
//

#import "NSObject+Center.h"
#import "MementCenter.h"


@implementation NSObject (Center)

-(void)saveKey:(NSString *)key
{
    id obj = (id<Protocol>) self;
    if ([obj respondsToSelector:@selector(currentFrame)]) {
        
        [MementCenter saveFrame:obj Key:key];
    }
}
- (void)showAnimationFromKey:(NSString *)key
{
    id obj = (id<Protocol>)self;
    
    if ([obj respondsToSelector:@selector(animationState:)]) {
        
        id state = [MementCenter removeFrameKey:key];
        
        if (state) {
            
            [obj animationState:state];
        }
        
    }
}

@end
