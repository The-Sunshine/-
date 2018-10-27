//
//  cardProtocol.h
//  适配器模式
//
//  Created by eagle on 2018/10/2.
//  Copyright © 2018 eagle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol CardProtocol <NSObject>

- (NSString *)name;

- (UIColor *)lineColor;

- (NSString *)age;

@end
