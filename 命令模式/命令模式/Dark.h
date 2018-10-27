//
//  Dark.h
//  命令模式
//
//  Created by eagle on 2018/10/10.
//  Copyright © 2018 eagle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Receiver.h"
#import "Protocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface Dark : NSObject <protocol>

- (instancetype)initWithReceiver:(Receiver *)receiver parameter:(CGFloat)parameter ;


@end

NS_ASSUME_NONNULL_END
