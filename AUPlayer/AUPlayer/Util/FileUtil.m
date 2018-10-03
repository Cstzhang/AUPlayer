//
//  FileUtil.m
//  AUPlayer
//
//  Created by zhangzb on 2018/10/3.
//  Copyright © 2018年 zhangzb. All rights reserved.
//

#import "FileUtil.h"

@implementation FileUtil
+ (NSString *)bundlePath:(NSString *)fileName{
    
    return [[[NSBundle mainBundle] bundlePath] stringByAppendingPathComponent:fileName];
}

+ (NSString *)documentsPath:(NSString *)fileName{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    return [documentsDirectory stringByAppendingPathComponent:fileName];
    
}
@end
