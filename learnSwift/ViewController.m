//
//  ViewController.m
//  learnSwift
//
//  Created by xiangxiong on 16/8/30.
//  Copyright © 2016年 xiangxiong. All rights reserved.
//

#import "ViewController.h"
#import "learnSwift-Swift.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"OC";
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 300, 100)];
    btn.layer.borderColor = [UIColor redColor].CGColor;
    [btn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    btn.layer.borderWidth = 1.f;
    [btn setTitle:@"跳转到Swift" forState:UIControlStateNormal];
    btn.center = CGPointMake(self.view.center.x, btn.center.y);
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(show) forControlEvents:UIControlEventTouchUpInside];

}
- (void)show
{
    sampleSwift *swift = [[sampleSwift alloc]init];
    [self.navigationController pushViewController:swift animated:true];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
