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
@synthesize studentId = _studentId;
@synthesize studentClass = _studentClass;
@synthesize hobby = _hobby;

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

- (NSString *)studentId{
    return _studentId;
}

- (void)setStudentId:(NSString *)studentId{
    _studentId = studentId;
}

- (NSString *)studentClass{
    return _studentClass;
}

- (void)setStudentClass:(NSString *)studentClass{
    _studentClass = studentClass;
}

- (NSString *)hobby{
    return _hobby;
}

- (void)setHobby:(NSString *)hobby{
    _hobby = hobby;
}
@end
