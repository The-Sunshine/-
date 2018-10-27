//
//  FactoryManager.h
//  抽象工厂
//
//  Created by eagle on 2018/10/5.
//  Copyright © 2018 eagle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppleFactory.h"
#import "GooleFactory.h"

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, Kfactory)
{
    KAPPLE,
    KGOOGLE
};

@interface FactoryManager : NSObject


+ (BaseFactory *)createManager:(Kfactory)factory;


@end

NS_ASSUME_NONNULL_END
