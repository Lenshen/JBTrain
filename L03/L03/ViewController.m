//
//  ViewController.m
//  L03
//
//  Created by MrMessy on 15/5/18.
//  Copyright (c) 2015年 MrMessy. All rights reserved.
//

#import "ViewController.h"
#import "BOUIView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *boScroolView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    BOUIView *boLabel = [[BOUIView alloc] initWithFrame:CGRectMake(10, 10, 160, 160)];
//    [self.boScroolView addSubview:boLabel];
//    boLabel.backgroundColor = [UIColor redColor];
//    
////    CGRect boScrollViewBounds = self.boScroolView.bounds;
////    CGRect boLabelFrame = boLabel.frame;
////    
////    CGFloat boLabelX = (boScrollViewBounds.size.width - boLabelFrame.size.width)/2.0;
////    CGFloat boLabelY = (boScrollViewBounds.size.height - boLabelFrame.size.height)/2.0;
////    
////    CGRect newFrame = CGRectMake(boLabelX, boLabelY, boLabelFrame.size.width, boLabelFrame.size.height);
////    
////    boLabel.frame = newFrame;
//    
//    UILabel *numberLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
//    numberLabel.text = @"1";
//    
//    CGRect boLabelBounds = boLabel.bounds;
//    CGRect numberLabelFrame = numberLabel.frame;
//    
//    
//    CGFloat numberLabelX = (boLabelBounds.size.width - numberLabelFrame.size.width)/2.0;
//    CGFloat numberLabelY = (boLabelBounds.size.height - numberLabelFrame.size.height)/2.0;
//    
//    CGRect newNumberFrame = CGRectMake(numberLabelX, numberLabelY, numberLabelFrame.size.width, numberLabelFrame.size.height);
//    numberLabel.frame = newNumberFrame;
//    
//    [boLabel addSubview:numberLabel];
    CGRect bigRect = self.view.bounds;
    bigRect.size.height *= 3.0;
//    bigRect.size.width *= 3.0;
    self.boScroolView.contentSize = bigRect.size;
    
    
    for (int i= 0; i<6; i++) {
        BOUIView *myView = [[BOUIView alloc] init];
        CGFloat x,y,width,height;
        x = 50;
        y = 50;
        width = 110;
        height = 260;
        
        int mod = floorf(i / 2);
        int mod2 = i % 2;
        
        if (!i == 0) {
            
            if (mod2 ==0) {
                y = y + mod * (height +50);
            }
            else{
                if (mod == 0) {
                    x= x + (width +50);
                }
                else{
                    x = x + (width +50);
                    y = y + mod * (height +50);
                }
            
            }

        }        
        
        
        CGRect frame = CGRectMake(x, y, width, height);
        myView.frame = frame;
        [self.boScroolView addSubview:myView];
        myView.backgroundColor = [UIColor yellowColor];
        
        UILabel *numberLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 20, 20)];
        NSString *bo = [[NSString alloc]initWithFormat:@"%d",i];
        numberLabel.text = bo;
        numberLabel.font = [UIFont systemFontOfSize:100];
        
        [numberLabel sizeToFit];
        
        CGRect myViewBounds = myView.bounds;
        CGRect numberLabelFrame = numberLabel.frame;
        
        
        CGFloat numberLabelX = (myViewBounds.size.width - numberLabelFrame.size.width)/2.0;
        CGFloat numberLabelY = (myViewBounds.size.height - numberLabelFrame.size.height)/2.0;
        
        CGRect newNumberFrame = CGRectMake(numberLabelX, numberLabelY, numberLabelFrame.size.width, numberLabelFrame.size.height);
        numberLabel.frame = newNumberFrame;
        
        [myView addSubview:numberLabel];
        
    }
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
