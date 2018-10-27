//
//  Circle.h
//  外观模式
//
//  Created by eagle on 2018/10/4.
//  Copyright © 2018 eagle. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Circle : NSObject

@property (nonatomic,copy) NSString * name;

- (void)drawCircle;

@end

NS_ASSUME_NONNULL_END
