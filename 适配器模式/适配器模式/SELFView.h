//
//  SELFView.h
//  适配器模式
//
//  Created by eagle on 2018/10/2.
//  Copyright © 2018 eagle. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CardProtocol.h"

@interface SELFView : UIView

@property (nonatomic,copy) NSString * name;

@property (nonatomic,strong) UIColor * lineColor;

@property (nonatomic,copy) NSString * age;

- (void)loadData:(id<CardProtocol>)data;

@end


