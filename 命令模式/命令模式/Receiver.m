//
//  Receiver.m
//  命令模式
//
//  Created by eagle on 2018/10/10.
//  Copyright © 2018 eagle. All rights reserved.
//

#import "Receiver.h"

@implementation Receiver
{
    CGFloat _brightness;
}
-(void)setView:(UIView *)view
{
    _view = view;
}

-(void)makeDarker:(CGFloat)param
{
    _brightness -= param;
    _brightness = MAX(0, _brightness);
    
    _view.backgroundColor = [UIColor colorWithHue:0 saturation:0 brightness:_brightness alpha:1.0];
}

-(void)makeLighter:(CGFloat)param
{
    _brightness += param;
    _brightness = MAX(1, _brightness);

    _view.backgroundColor = [UIColor colorWithHue:0 saturation:0 brightness:_brightness alpha:1.0];

}
@end
