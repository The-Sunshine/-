//
//  Engine.h
//  生成器模式
//
//  Created by eagle on 2018/10/10.
//  Copyright © 2018 eagle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BuildProtocol.h"
#import "PartsProtocol.h"
#import "EngineProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface Engine : NSObject <BuildProtocol,PartsProtocol,EngineProtocol>


@end

NS_ASSUME_NONNULL_END
