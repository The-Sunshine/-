//
//  ZYQTextField.h
//  策略模式
//
//  Created by eagle on 2018/10/4.
//  Copyright © 2018 eagle. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "InputValidator.h"

@interface ZYQTextField : UITextField

@property (nonatomic,strong) InputValidator * validator;

- (BOOL)validate;

@end


