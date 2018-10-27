//
//  Door.h
//  生成器模式
//
//  Created by eagle on 2018/10/10.
//  Copyright © 2018 eagle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BuildProtocol.h"
#import "PartsProtocol.h"
#import "DoorProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface Door : NSObject <BuildProtocol,PartsProtocol,DoorProtocol>


@end

NS_ASSUME_NONNULL_END
