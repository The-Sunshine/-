//
//  CheatGameDecorator.h
//  装饰模式
//
//  Created by eagle on 2018/10/5.
//  Copyright © 2018 eagle. All rights reserved.
//

#import "GamePadDecorator.h"

NS_ASSUME_NONNULL_BEGIN

@interface CheatGamePadDecorator : GamePadDecorator

- (void)cheap;

@end

NS_ASSUME_NONNULL_END
