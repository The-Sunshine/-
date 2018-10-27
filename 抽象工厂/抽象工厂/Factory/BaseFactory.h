//
//  BaseFactory.h
//  抽象工厂
//
//  Created by eagle on 2018/10/5.
//  Copyright © 2018 eagle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BasePhone.h"
#import "BaseWatch.h"

NS_ASSUME_NONNULL_BEGIN

@interface BaseFactory : NSObject

- (BasePhone *)createPhone;

- (BaseWatch *)createWatch;

@end

NS_ASSUME_NONNULL_END
