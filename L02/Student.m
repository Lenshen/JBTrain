//
//  Student.m
//  L02
//
//  Created by MrMessy on 15/5/15.
//  Copyright (c) 2015年 MrMessy. All rights reserved.
//

#import "Student.h"

@implementation Student
@synthesize name = _name;
@synthesize age = _age;

- (NSString *)name{
    return _name;
}

- (void)setName:(NSString *)name{
    _name = name;
}

- (NSNumber *)age{
    
    return _age;
}

- (void)setAge:(NSNumber *)age{
    _age = age;
}
@end
