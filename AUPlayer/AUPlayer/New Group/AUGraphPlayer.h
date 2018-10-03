//
//  AUGraphPlayer.h
//  AUPlayer
//
//  Created by zhangzb on 2018/10/2.
//  Copyright © 2018年 zhangzb. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface AUGraphPlayer : NSObject

- (id)initWithFilePath:(NSString *)path;

- (BOOL)play;

- (void)stop;

- (void)setInputSource:(BOOL)isAcc;


@end


