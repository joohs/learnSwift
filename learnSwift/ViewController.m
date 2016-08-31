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
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *brn = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    brn.backgroundColor =[UIColor redColor];
    [self.view addSubview:brn];
    [brn addTarget:self action:@selector(show) forControlEvents:UIControlEventTouchUpInside];

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
