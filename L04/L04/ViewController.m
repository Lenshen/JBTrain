//
//  ViewController.m
//  L04
//
//  Created by MrMessy on 15/5/20.
//  Copyright (c) 2015年 MrMessy. All rights reserved.
//

#import "ViewController.h"
#import "Student.h"

@interface ViewController ()
<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong)UITableView *tableView;
@property (nonatomic, strong)NSArray *studentsArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:self.tableView];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    // Do any additional setup after loading the view, typically from a nib.
}

-(NSArray *)studentsArray{
    if (!_studentsArray) {
        
        _studentsArray = @[@"1",@"2",@"3",@"4",@"5",@"1",@"2",@"3",@"4",@"5",
                           @"1",@"2",@"3",@"4",@"5",@"1",@"2",@"3",@"4",@"5",
                           @"1",@"2",@"3",@"4",@"5"];
    }
    return _studentsArray;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.studentsArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    NSString *string = self.studentsArray[indexPath.row];
    cell.textLabel.text = string;
    
    return cell;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
