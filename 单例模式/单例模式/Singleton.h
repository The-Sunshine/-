//
//  Singleton.h
//  单例模式
//
//  Created by eagle on 2018/10/9.
//  Copyright © 2018 eagle. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Singleton : NSObject

+ (instancetype)shareManager;

@property (nonatomic,strong) NSString * name;

@end

NS_ASSUME_NONNULL_END
