//
//  bridgeSystem.h
//  桥接2
//
//  Created by eagle on 2018/10/8.
//  Copyright © 2018 eagle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BridgeImplement.h"

NS_ASSUME_NONNULL_BEGIN

@interface BridgeSystem : NSObject

@property (nonatomic,strong) BridgeImplement * implement;

- (void)loadSystem;

- (void)common_up;

- (void)common_down;


@end

NS_ASSUME_NONNULL_END
