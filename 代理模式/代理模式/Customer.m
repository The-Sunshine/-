//
//  Customer.m
//  代理模式
//
//  Created by eagle on 2018/10/9.
//  Copyright © 2018 eagle. All rights reserved.
//

#import "Customer.h"

@implementation Customer

-(void)buyItemCount:(NSInteger)count
{
    if (self.delegate && [self.delegate respondsToSelector:@selector(customer:)]) {
        
        [self.delegate customer:count * 2];
    }
}
@end
