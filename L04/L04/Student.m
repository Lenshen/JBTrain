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

- (NSString *)age{
    
    return _age;
}

- (void)setAge:(NSString *)age{
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

- (NSString *)description
{
    NSString *descriptionString =
    [[NSString alloc] initWithFormat:@"%@(%@) 学号:%@ 年级:%@ %@",
     self.name,
     self.age,
     self.studentId,
     self.studentClass,
     self.hobby];
    return descriptionString;
}

+(instancetype)randomItem{
    
    NSArray *nameNumber = @[@"朱剑波",@"张三",@"李四"];
    NSArray *randomAge = @[@"23",@"24",@"25"];
    NSArray *randomId = @[@"1006030",@"1006040",@"1006050"];
    NSArray *classNumber = @[@"一年级",@"二年级",@"三年级"];
    NSArray *hobbyNumber = @[@"篮球",@"足球",@"网球"];
    
    NSInteger nameIndex = arc4random() % [nameNumber count];
    NSInteger ageIndex = arc4random() % [randomAge count];
    NSInteger idIndex = arc4random() % [randomId count];
    NSInteger classIndex = arc4random() % [classNumber count];
    NSInteger hobbyIndex = arc4random() % [hobbyNumber count];
    
    NSString *randomNameNumber = [NSString stringWithFormat:@"%@",nameNumber[nameIndex]];
    
    NSString *randomAgeNumber = [NSString stringWithFormat:@"%@",randomAge[ageIndex]];
    
    NSString *randomIdNumber = [NSString stringWithFormat:@"%@",
                                randomId[idIndex]];
    NSString *randomClassNumber = [NSString stringWithFormat:@"%@",classNumber[classIndex]];
    
    NSString *randomHobbyNumber = [NSString stringWithFormat:@"%@",hobbyNumber[hobbyIndex]];
    
    Student *jb = [[Student alloc]init];
    jb.name = randomNameNumber;
    jb.age = randomAgeNumber;
    jb.studentId = randomIdNumber;
    jb.studentClass = randomClassNumber;
    jb.hobby = randomHobbyNumber;
    
    return jb;
}
@end
