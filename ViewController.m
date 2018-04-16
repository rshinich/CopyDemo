//
//  ViewController.m
//  CopyDemo
//
//  Created by 张忠瑞 on 2018/4/3.
//  Copyright © 2018年 张忠瑞. All rights reserved.
//

#import "ViewController.h"
#import "CopyModel.h"

@interface ViewController ()

@property (nonatomic ,strong) NSString              *myStrongStr;
@property (nonatomic ,copy) NSString                *myCopyStr;
@property (nonatomic ,copy) NSMutableArray          *myMutableArr;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setTypeMutableTypeMutableCopy];
    [self setTypeMutableTypeImutableCopy];
    [self setTypeImutableTypeMutableCopy];
    [self setTypeImutableTypeImutableCopy];
    
    [self unsetTypeMutableTypeMutableCopy];
    [self unsetTypeMutableTypeImutableCopy];
    [self unsetTypeImutableTypeMutableCopy];
    [self unsetTypeImutableTypeImutableCopy];
    
    [self customTypeMutableCopy];
    [self customTypeImutableCopy];
    
    [self strongStrVSCopyStr];
    

//    self.myMutableArr = [NSMutableArray arrayWithObjects:@"first",@"second",@"third", nil];
//    [self.myMutableArr addObject:@"forth"];
}

#pragma mark -
#pragma mark - set type

/**
 集合类型 - 可变类型 - mutableCopy
 */
- (void)setTypeMutableTypeMutableCopy
{
    NSMutableArray *mutableArr = [NSMutableArray arrayWithObjects:@"first",@"second",@"third", nil];
    NSMutableArray *mutableCopyMutableArr = [mutableArr mutableCopy];
    
    NSLog(@"%@",[[mutableArr mutableCopy] class]);
    NSLog(@"%@ --- %p",mutableArr,mutableArr);
    NSLog(@"%@ --- %p",mutableCopyMutableArr ,mutableCopyMutableArr);
    
}

/**
 集合类型 - 可变类型 - imutableCopy
 */
- (void)setTypeMutableTypeImutableCopy
{
    NSMutableArray *mutableArr = [NSMutableArray arrayWithObjects:@"first",@"second",@"third", nil];
    NSMutableArray *mutableCopyImutableArr = [mutableArr copy];
    
    NSLog(@"%@",[[mutableArr copy] class]);
    NSLog(@"%@ --- %p",mutableArr,mutableArr);
    NSLog(@"%@ --- %p",mutableCopyImutableArr ,mutableCopyImutableArr);
}


/**
 集合类型 - 不可变类型 - mutableCopy
 */

- (void)setTypeImutableTypeMutableCopy
{
    NSArray *imutableArr = [NSArray arrayWithObjects:@"first",@"second",@"third", nil];
    NSArray *imutableArrMutableCopy = [imutableArr mutableCopy];
    
    NSLog(@"%@",[[imutableArr mutableCopy] class]);
    NSLog(@"%@ --- %p",imutableArr,imutableArr);
    NSLog(@"%@ --- %p",imutableArrMutableCopy,imutableArrMutableCopy);
}

/**
 集合类型 - 不可变类型 - imutableCopy
 */
- (void)setTypeImutableTypeImutableCopy
{
    NSArray *imutableArr = [NSArray arrayWithObjects:@"first",@"second",@"third", nil];
    NSArray *imutableArrImutableCopy = [imutableArr copy];
    
    NSLog(@"%@",[[imutableArr copy] class]);
    NSLog(@"%@ --- %p",imutableArr,imutableArr);
    NSLog(@"%@ --- %p",imutableArrImutableCopy,imutableArrImutableCopy);
}


#pragma mark -
#pragma mark - not set type

/**
 非集合类型 - 可变类型 - mutableCopy
 */

- (void)unsetTypeMutableTypeMutableCopy
{
    NSMutableString *mutableStr = [NSMutableString stringWithFormat:@"mutableStr"];
    NSMutableString *mutableStrMutableCopy = [mutableStr mutableCopy];
    
    NSLog(@"%@",[[mutableStr mutableCopy] class]);
    NSLog(@"%@ --- %p",mutableStr,mutableStr);
    NSLog(@"%@ --- %p",mutableStrMutableCopy,mutableStrMutableCopy);
}

/**
 非集合类型 - 可变类型 - imutableCopy
 */

- (void)unsetTypeMutableTypeImutableCopy
{
    NSMutableString *mutableStr = [NSMutableString stringWithFormat:@"mutableStr"];
    NSMutableString *mutableStrImutableCopy = [mutableStr copy];
    
    NSLog(@"%@",[[mutableStr copy] class]);
    NSLog(@"%@ --- %p",mutableStr,mutableStr);
    NSLog(@"%@ --- %p",mutableStrImutableCopy,mutableStrImutableCopy);
}

/**
 非集合类型 - 不可变类型 - mutableCopy
 */

- (void)unsetTypeImutableTypeMutableCopy
{
    NSString *str = [NSString stringWithFormat:@"ImutableStr"];
    NSString *strMutableCopy = [str mutableCopy];
    
    NSLog(@"%@",[[str mutableCopy] class]);
    NSLog(@"%@ --- %p",str,str);
    NSLog(@"%@ --- %p",strMutableCopy,strMutableCopy);
}

/**
 非集合类型 - 不可变类型 - imutableCopy
 */

- (void)unsetTypeImutableTypeImutableCopy
{
    NSString *str = [NSString stringWithFormat:@"ImtableStr"];
    NSString *strImutableCopy = [str copy];
    
    NSLog(@"%@",[[str copy] class]);
    NSLog(@"%@ --- %p",str,str);
    NSLog(@"%@ --- %p",strImutableCopy,strImutableCopy);
}


#pragma mark -
#pragma mark - custom type

/**
 自定义类型 - mutableCopy
 */

- (void)customTypeMutableCopy
{
    CopyModel *model = [[CopyModel alloc] init];
    
    model.name = @"name";
    model.location = @"location";
    
    CopyModel *copyModel = [model mutableCopy];
    
    NSLog(@"%@ --- %@ --- %p",model.name,model.location,model);
    NSLog(@"%@ --- %@ --- %p",copyModel.name,copyModel.location,copyModel);
}

/**
 自定义类型 - ImutableCopy
 */

- (void)customTypeImutableCopy
{
    CopyModel *model = [[CopyModel alloc] init];
    
    model.name = @"name";
    model.location = @"location";
    
    CopyModel *copyModel = [model copy];
    
    NSLog(@"%@ --- %@ --- %p",model.name,model.location,model);
    NSLog(@"%@ --- %@ --- %p",copyModel.name,copyModel.location,copyModel);
}

#pragma mark -
#pragma mark - @property type

- (void)strongStrVSCopyStr
{
    NSMutableString *otherStr = [NSMutableString stringWithFormat:@"otherStr"];
    
    self.myStrongStr = otherStr;
    self.myCopyStr = otherStr;
    
//    otherStr = @"otherStrChanged";
    [otherStr appendString:@"addSomeThing"];
    
    NSLog(@"%@ --- %p",self.myStrongStr,self.myStrongStr);
    NSLog(@"%@ --- %p",self.myCopyStr,self.myCopyStr);
    NSLog(@"%@ --- %p",otherStr,otherStr);
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
