//
//  CopyModel.h
//  CopyDemo
//
//  Created by 张忠瑞 on 2018/4/3.
//  Copyright © 2018年 张忠瑞. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CopyModel : NSObject<NSCopying,NSMutableCopying>

@property (nonatomic ,copy) NSString            *name;
@property (nonatomic ,copy) NSString            *location;

@end
