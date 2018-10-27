//
//  Light.h
//  命令模式
//
//  Created by eagle on 2018/10/10.
//  Copyright © 2018 eagle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Protocol.h"
#import "Receiver.h"

NS_ASSUME_NONNULL_BEGIN

@interface Light : NSObject <protocol>

- (instancetype)initWithReceiver:(Receiver *)receiver parameter:(CGFloat)parameter ;

@end

NS_ASSUME_NONNULL_END
