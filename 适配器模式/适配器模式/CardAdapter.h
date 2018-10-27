//
//  CardAdapter.h
//  适配器模式
//
//  Created by eagle on 2018/10/2.
//  Copyright © 2018 eagle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CardProtocol.h"

@interface CardAdapter : NSObject <CardProtocol>

@property (nonatomic,strong) id data;

- (instancetype)initWithData:(id)data;

@end

