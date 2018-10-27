//
//  ShapeMaker.m
//  外观模式
//
//  Created by eagle on 2018/10/4.
//  Copyright © 2018 eagle. All rights reserved.
//

#import "ShapeMaker.h"
#import "Circle.h"
#import "Rectangle.h"

@implementation ShapeMaker

+ (void)drawCircle:(NSDictionary *)dic
{
    Circle * c = [[Circle alloc]init];
    c.name = dic[@"name"];
    [c drawCircle];
}

+(void)drawRectAngle:(NSDictionary *)dic
{
    Rectangle * r = [[Rectangle alloc]init];
    r.color = dic[@"color"];
    [r drawRectangle];
}
@end
