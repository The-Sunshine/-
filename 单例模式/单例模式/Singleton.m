//
//  Singleton.m
//  单例模式
//
//  Created by eagle on 2018/10/9.
//  Copyright © 2018 eagle. All rights reserved.
//

#import "Singleton.h"

static NSString * _clsName = nil;

static Singleton * _single = nil;

@implementation Singleton

+ (instancetype)shareManager
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        _clsName = @"Singleton";
        
        _single = [[Singleton alloc]init];
        _single.name = @"";

        if (![NSStringFromClass([self class]) isEqualToString:_clsName])
        {
            NSString * str = [NSString stringWithFormat:@"%@类为单例不允许%@类继承并使用%@方法",_clsName,NSStringFromClass([self class]),NSStringFromSelector(_cmd)];
            
            NSAssert(!_single, str);
        }
    });

    return _single;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _single = [super allocWithZone:zone];
    });
    return _single;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        if (!_single && !_clsName) {
            
            NSAssert(_single, @"请使用shareManager对单例进行初始化操作");
        }
        
        if (![NSStringFromClass([self class]) isEqualToString:_clsName]) {
            
            NSString * str = [NSString stringWithFormat:@"不允许%@类继承并初始化单例",NSStringFromClass([self class])];
            NSAssert(_single, str);
        }


    }
    return self;
}

@end
