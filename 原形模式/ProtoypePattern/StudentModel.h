//
//  StudentModel.h
//  ProtoypePattern
//
//  Created by wupeng on 2017/2/26.
//  Copyright © 2017年 wupeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ProtoypeCopyProtocol.h"

@interface StudentModel : NSObject <ProtoypeCopyProtocol>

@property (nonatomic, copy) NSString  *name;

@property (nonatomic, strong) NSNumber  *age;

@property (nonatomic, copy) NSString  *address;

@property (nonatomic, strong) NSNumber  *totalScore;

@end
