//
//  main.m
//  L03
//
//  Created by MrMessy on 15/5/18.
//  Copyright (c) 2015年 MrMessy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        float s=1.0;
        float x;
        float y;
        
        x = ceilf(s / 3);
        y = floorf(s / 3);
        NSLog(@"x = %f",x);
        NSLog(@"y = %f",y);
        
                return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
