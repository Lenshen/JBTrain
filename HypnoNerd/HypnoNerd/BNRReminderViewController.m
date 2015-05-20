//
//  BNRReminderViewController.m
//  HypnoNerd
//
//  Created by MrMessy on 15/5/19.
//  Copyright (c) 2015年 MrMessy. All rights reserved.
//

#import "BNRReminderViewController.h"

@interface BNRReminderViewController ()
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;



@end

@implementation BNRReminderViewController
- (IBAction)addReminder:(UIButton *)sender {
    NSDate *date = self.datePicker.date;
    NSLog(@"Setting a reminder for %@",date);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
