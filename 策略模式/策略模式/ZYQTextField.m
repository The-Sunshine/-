
//
//  ZYQTextField.m
//  策略模式
//
//  Created by eagle on 2018/10/4.
//  Copyright © 2018 eagle. All rights reserved.
//

#import "ZYQTextField.h"

@implementation ZYQTextField

-(BOOL)validate
{
    return [self.validator validatorInput:self];
}
@end
