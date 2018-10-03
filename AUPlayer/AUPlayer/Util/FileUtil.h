//
//  FileUtil.h
//  AUPlayer
//
//  Created by zhangzb on 2018/10/3.
//  Copyright © 2018年 zhangzb. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface FileUtil : NSObject

+ (NSString *)bundlePath:(NSString *)fileName;

+ (NSString *)documentsPath:(NSString *)fileName;

@end


