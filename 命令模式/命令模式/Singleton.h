//
//  Singleton.h
//  命令模式
//
//  Created by eagle on 2018/10/10.
//  Copyright © 2018 eagle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Protocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface Singleton : NSObject

+ (instancetype)shareInstance;

- (void)rollBack;

- (void)addExcute:(id<protocol>)excute;


@end

NS_ASSUME_NONNULL_END
