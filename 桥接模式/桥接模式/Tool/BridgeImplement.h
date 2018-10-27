//
//  BridgeImplement.h
//  桥接2
//
//  Created by eagle on 2018/10/8.
//  Copyright © 2018 eagle. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger,kCommonType)
{
    k_up,
    k_down,
    k_left,
    k_right
};

@interface BridgeImplement : NSObject

- (void)loadCommon:(kCommonType)commonType;

@end

NS_ASSUME_NONNULL_END
