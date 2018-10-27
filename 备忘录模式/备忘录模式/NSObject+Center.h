//
//  NSObject+Center.h
//  备忘录模式
//
//  Created by eagle on 2018/10/9.
//  Copyright © 2018 eagle. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (Center)

- (void)saveKey:(NSString *)key;

- (void)showAnimationFromKey:(NSString *)key;

@end

NS_ASSUME_NONNULL_END
