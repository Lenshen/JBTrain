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

- (NSArray *)studentsArray {
    if (!_studentsArray) {
        // 生成可变数组
        NSMutableArray *array = [NSMutableArray array];
        // 循环5次 生成5个student
        for (int i =0; i < 5; i++) {
            // 初始化 student
            Student *student = [Student randomItem];
            
            //            student.name =  @"朱剑波";
            //            student.age = @"24";
            //            student.studentId = @"100603170";
            //            student.studentClass = @"一年级";
            //            student.hobby = @"篮球";
            //TODO: 自定义学生变量 name age id
            
            
            // 添加到数组
            [array addObject:student];
            
        }
        
        _studentsArray = [array copy];
    }
    return  _studentsArray;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.studentsArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    Student *student1 = self.studentsArray[indexPath.row];
    
    cell.textLabel.text = [student1 description];
    
    //设置字体大小
    //    cell.textLabel.font = [UIFont systemFontOfSize:30];
    
    //设置cell高度
    self.tableView.rowHeight = 100;
    
    //设置accessorytype符号
    cell.accessoryType = UITableViewCellAccessoryDetailButton;
    
    //设置字体颜色
    cell.textLabel.textColor = [UIColor redColor];
    
    return cell;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
