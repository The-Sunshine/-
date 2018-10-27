//
//  InputValidator.h
//  策略模式
//
//  Created by eagle on 2018/10/4.
//  Copyright © 2018 eagle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


@interface InputValidator : NSObject

- (BOOL)validatorInput:(UITextField *)textField;

@property (nonatomic,copy) NSString * errorMessage;

@end


