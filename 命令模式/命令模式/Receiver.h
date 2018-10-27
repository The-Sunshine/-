//
//  Receiver.h
//  命令模式
//
//  Created by eagle on 2018/10/10.
//  Copyright © 2018 eagle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Receiver : NSObject

@property (nonatomic,weak) UIView * view;

- (void)makeDarker:(CGFloat)param;

- (void)makeLighter:(CGFloat)param;

@end

NS_ASSUME_NONNULL_END
