//
//  ViewController.m
//  L01
//
//  Created by MrMessy on 15/5/13.
//  Copyright (c) 2015年 MrMessy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;


@end

@implementation ViewController

- (IBAction)button:(UIButton *)sender {
    self.label.text = @"123";
}


-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}//Close #1
//Test
//做了一个页面的跳转变化
//完成

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
