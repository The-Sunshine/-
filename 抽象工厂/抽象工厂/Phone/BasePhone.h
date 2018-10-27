//
//  BasePhone.h
//  抽象工厂
//
//  Created by eagle on 2018/10/5.
//  Copyright © 2018 eagle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PhoneProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface BasePhone : NSObject <PhoneProtocol>

- (void)phoneCall;

- (void)sendMessage;

@end

NS_ASSUME_NONNULL_END
