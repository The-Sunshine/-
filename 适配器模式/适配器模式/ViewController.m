//
//  ViewController.m
//  适配器模式
//
//  Created by eagle on 2018/10/2.
//  Copyright © 2018 eagle. All rights reserved.
//

#import "ViewController.h"
#import "Model1.h"
#import "Model2.h"
#import "SELFView.h"
#import "CardAdapter.h"

@interface ViewController ()

@end

@implementation ViewController

//    允许因为接口不兼容而不能一起工作的类能够在一起工作，做法是将类自己的接口包裹在一个已存在的类中。

- (void)viewDidLoad {
    [super viewDidLoad];

    SELFView *cardView = [[SELFView alloc] initWithFrame:CGRectMake(0, 0, 200, 130)];
    cardView.center            = self.view.center;
    [self.view addSubview:cardView];
    
    Model1 * model1 = [[Model1 alloc]init];
    model1.name = @"张3";
    model1.age = @"18";
    model1.lineColor = [UIColor redColor];
    
    CardAdapter * card = [[CardAdapter alloc]initWithData:model1];
    [cardView loadData:card];

//    Model2 * model2 = [[Model2 alloc]init];
//    model2.name = @"李四";
//    model2.age = @"21";
//    model2.lineColor = @"yellowColor";
//
//    CardAdapter * card2 = [[CardAdapter alloc]initWithData:model2];
//    [cardView loadData:card2];
}


@end
