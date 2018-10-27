//
//  Wheel.h
//  生成器模式
//
//  Created by eagle on 2018/10/10.
//  Copyright © 2018 eagle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BuildProtocol.h"
#import "PartsProtocol.h"
#import "WheelProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface Wheel : NSObject <BuildProtocol,PartsProtocol,WheelProtocol>





@end

NS_ASSUME_NONNULL_END
