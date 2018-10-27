//
//  ViewController.m
//  策略模式
//
//  Created by eagle on 2018/10/4.
//  Copyright © 2018 eagle. All rights reserved.
//

#import "ViewController.h"
#import "ZYQTextField.h"
#import "EmailValidator.h"
#import "PhoneNumberValidator.h"

@interface ViewController ()<UITextFieldDelegate>

@end

@implementation ViewController

//策略模式定义了一系列的算法，并将每一个算法封装起来，而且使它们还可以相互替换。策略模式让算法独立于使用它的客户而独立变化
//优点：简化操作，提高代码维护性。算法可以自由切换，避免使用多重条件判断，扩展性良好。
//缺点：在使用之前就要确定使用某种策略，而不是动态的选择策略。策略类会增多，所有策略类都需要对外暴露。
- (void)viewDidLoad {
    [super viewDidLoad];

    [self initUI];
}

- (void)initUI
{
    UIButton * sureButton = ({
        
        UIButton * button = [[UIButton alloc]init];
        button.frame = CGRectMake(100, 300, 100, 100);
        [button setTitle:@"sure" forState:UIControlStateNormal];
        button.backgroundColor = [UIColor blueColor];
        [button addTarget:self action:@selector(sureButton) forControlEvents:UIControlEventTouchUpInside];
        button;
    });
    [self.view addSubview:sureButton];
    
    ZYQTextField * emailTF = ({
        
        ZYQTextField * textField = [[ZYQTextField alloc]init];
        textField.frame = CGRectMake(100, 100, 100, 50);
        textField.font = [UIFont systemFontOfSize:14];
        textField.delegate = self;
        textField.placeholder = @"email";
        textField;
    });
    [self.view addSubview:emailTF];
    emailTF.validator = [[EmailValidator alloc]init];
    
    ZYQTextField * phoneNumberTF = ({
        
        ZYQTextField * textField = [[ZYQTextField alloc]init];
        textField.frame = CGRectMake(100, 200, 100, 50);
        textField.font = [UIFont systemFontOfSize:14];
        textField.delegate = self;
        textField.placeholder = @"phoneNumber";
        textField;
    });
    [self.view addSubview:phoneNumberTF];
    phoneNumberTF.validator = [[PhoneNumberValidator alloc]init];
}

- (void)sureButton
{
    [self.view endEditing:YES];
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    ZYQTextField * tf = (ZYQTextField *)textField;
    
    if (![tf validate])
    {
        NSLog(@"error - %@",tf.validator.errorMessage);
    }
    else
    {
        NSLog(@"success");
    }
}

@end
