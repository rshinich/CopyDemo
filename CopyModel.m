//
//  CopyModel.m
//  CopyDemo
//
//  Created by 张忠瑞 on 2018/4/3.
//  Copyright © 2018年 张忠瑞. All rights reserved.
//

#import "CopyModel.h"

@implementation CopyModel


- (instancetype)copyWithZone:(NSZone *)zone
{
    CopyModel *copyModel = [[CopyModel alloc] init];
    
    copyModel.name = self.name;
    copyModel.location = self.location;
    
    return copyModel;
}

- (instancetype)mutableCopyWithZone:(NSZone *)zone
{
    CopyModel *copyModel = [[CopyModel alloc] init];
    
    copyModel.name = self.name;
    copyModel.location = self.location;

    return copyModel;
}


@end
