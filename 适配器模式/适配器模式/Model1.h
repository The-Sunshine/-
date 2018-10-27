//
//  Model1.h
//  适配器模式
//
//  Created by eagle on 2018/10/2.
//  Copyright © 2018 eagle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Model1 : NSObject

@property (nonatomic,copy) NSString * name;

@property (nonatomic,strong) UIColor * lineColor;

@property (nonatomic,copy) NSString * age;

@end

NS_ASSUME_NONNULL_END
