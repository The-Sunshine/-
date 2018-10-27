//
//  Customer.h
//  代理模式
//
//  Created by eagle on 2018/10/9.
//  Copyright © 2018 eagle. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol CustomerDelegate <NSObject>

- (void)customer:(NSInteger)price;

@end

@interface Customer : NSObject

@property (nonatomic,weak) id<CustomerDelegate> delegate;

- (void)buyItemCount:(NSInteger)count;

@end

NS_ASSUME_NONNULL_END
