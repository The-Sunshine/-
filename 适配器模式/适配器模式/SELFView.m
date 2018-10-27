//
//  SELFView.m
//  适配器模式
//
//  Created by eagle on 2018/10/2.
//  Copyright © 2018 eagle. All rights reserved.
//

#import "SELFView.h"

@interface SELFView ()

@property (nonatomic, strong) UILabel  *nameLabel;
@property (nonatomic, strong) UIView   *lineView;
@property (nonatomic, strong) UILabel  *phoneNumberLabel;

@end

@implementation SELFView

#pragma mark - 初始化
- (instancetype)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        
        [self setup];
    }
    
    return self;
}

- (void)setup {
    
    self.backgroundColor     = [UIColor whiteColor];
    self.layer.borderWidth   = 0.5f;
    self.layer.shadowOpacity = 0.5f;
    self.layer.shadowOffset  = CGSizeMake(5, 5);
    self.layer.shadowRadius  = 1.f;
    self.layer.shadowColor   = [UIColor grayColor].CGColor;
    
    self.nameLabel      = [[UILabel alloc] initWithFrame:CGRectMake(15, 10, 150, 25)];
    self.nameLabel.font = [UIFont systemFontOfSize:20.f];
    [self addSubview:self.nameLabel];
    
    self.lineView                 = [[UIView alloc] initWithFrame:CGRectMake(0, 45, 200, 5)];
    [self addSubview:self.lineView];
    
    self.phoneNumberLabel               = [[UILabel alloc] initWithFrame:CGRectMake(41, 105, 150, 20)];
    self.phoneNumberLabel.textAlignment = NSTextAlignmentRight;
    self.phoneNumberLabel.font          = [UIFont systemFontOfSize:16.f];
    [self addSubview:self.phoneNumberLabel];
}

-(void)loadData:(id<CardProtocol>)data
{
    self.name = [data name];
    
    self.lineColor = [data lineColor];
    
    self.age = [data age];
}

-(void)setName:(NSString *)name
{
    _nameLabel.text = name;
}

-(void)setLineColor:(UIColor *)lineColor
{
    _lineView.backgroundColor = lineColor;
}
-(void)setAge:(NSString *)age
{
    _phoneNumberLabel.text = age;
}
@end
