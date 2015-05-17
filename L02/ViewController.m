//
//  ViewController.m
//  L02
//
//  Created by MrMessy on 15/5/15.
//  Copyright (c) 2015年 MrMessy. All rights reserved.
//

#import "ViewController.h"
#import "Student.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *ageLabel;
@property (weak, nonatomic) IBOutlet UILabel *studentIdLabel;
@property (weak, nonatomic) IBOutlet UILabel *studentClassLabel;
@property (weak, nonatomic) IBOutlet UILabel *hobbyLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Student *jb = [[Student alloc] init];
    jb.name = @"朱剑波";
    _nameLabel.text = jb.name;
    [_nameLabel sizeToFit];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
