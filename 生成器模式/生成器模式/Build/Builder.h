//
//  Builder.h
//  生成器模式
//
//  Created by eagle on 2018/10/10.
//  Copyright © 2018 eagle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EngineProtocol.h"
#import "WheelProtocol.h"
#import "DoorProtocol.h"
#import "BuildProtocol.h"
#import "PartsProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface Builder : NSObject

@property (nonatomic,strong) id<BuildProtocol,EngineProtocol,PartsProtocol> engine;

@property (nonatomic,strong) id<BuildProtocol,WheelProtocol,PartsProtocol> wheel;

@property (nonatomic,strong) id<BuildProtocol,DoorProtocol,PartsProtocol> door;

@property (nonatomic,strong) NSDictionary * productDic;

- (void)buildAllParts;

@end

NS_ASSUME_NONNULL_END
