//
//  ZYQView.m
//  备忘录模式
//
//  Created by eagle on 2018/10/9.
//  Copyright © 2018 eagle. All rights reserved.
//

#import "ZYQView.h"

@implementation ZYQView

- (id)currentFrame
{
    CGRect frame = CGRectMake(300, 300, 100, 100);

    return @{@"frame":NSStringFromCGRect(frame)};
}

-(void)animationState:(id)state
{
    NSDictionary * data = state;
    
    [UIView animateWithDuration:3 animations:^{
       
        self.frame = CGRectFromString(data[@"frame"]);
    }];
}

@end
