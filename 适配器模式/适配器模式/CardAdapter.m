//
//  CardAdapter.m
//  适配器模式
//
//  Created by eagle on 2018/10/2.
//  Copyright © 2018 eagle. All rights reserved.
//

#import "CardAdapter.h"
#import "Model1.h"
#import "Model2.h"

@implementation CardAdapter

-(instancetype)initWithData:(id)data
{
    self = [super init];
    if (self)
    {
        self.data = data;
    }
    return self;
}

-(NSString *)name
{
    NSString * nameString = nil;
    
    if ([self.data isMemberOfClass:[Model1 class]])
    {
        Model1 * model = self.data;
        nameString = [NSString stringWithFormat:@"model1 - %@",model.name];
    }
    else if ([self.data isMemberOfClass:[Model2 class]])
    {
        Model2 * model = self.data;
        nameString = [NSString stringWithFormat:@"model2 - %@",model.name];
    }
    return nameString;
}

-(UIColor *)lineColor
{
    UIColor * lineColor;
    
    if ([self.data isMemberOfClass:[Model1 class]])
    {
        Model1 * model = self.data;
        lineColor = model.lineColor;
    }
    else if ([self.data isMemberOfClass:[Model2 class]])
    {
        Model2 * model = self.data;
        
        if ([model.lineColor isEqualToString:@"yellowColor"])
        {
            lineColor = [UIColor yellowColor];
        }
    }
    return lineColor;
}

-(NSString *)age
{
    NSString * age = nil;
    
    if ([self.data isMemberOfClass:[Model1 class]])
    {
        Model1 * model = self.data;
        age = [NSString stringWithFormat:@"model1 - %@",model.age];
    }
    else if ([self.data isMemberOfClass:[Model2 class]])
    {
        Model2 * model = self.data;
        age = [NSString stringWithFormat:@"model2 - %@",model.age];
    }
    return age;
}
@end
