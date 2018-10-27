//
//  MementCenter.h
//  备忘录模式
//
//  Created by eagle on 2018/10/9.
//  Copyright © 2018 eagle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Protocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface MementCenter : NSObject

+ (void)saveFrame:(id <Protocol>)obj Key:(NSString *)key;

+ (id)removeFrameKey:(NSString *)key;

@end

NS_ASSUME_NONNULL_END
