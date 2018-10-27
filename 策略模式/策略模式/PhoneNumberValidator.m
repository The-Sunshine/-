//
//  PhoneNumberValidator.m
//  策略模式
//
//  Created by eagle on 2018/10/4.
//  Copyright © 2018 eagle. All rights reserved.
//

#import "PhoneNumberValidator.h"

@implementation PhoneNumberValidator

- (BOOL)validatorInput:(UITextField *)textField
{
    if (textField.text.length == 0) {
        
        self.errorMessage = @"没有输入";
        
    } else {
        
        if (textField.text.length < 5) {
            
            self.errorMessage = @"请输入正确的电话号码";
        }
    }
    
    return self.errorMessage == nil ? YES : NO;
}
@end
