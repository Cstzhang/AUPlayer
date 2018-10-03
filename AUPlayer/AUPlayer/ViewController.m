//
//  ViewController.m
//  AUPlayer
//
//  Created by zhangzb on 2018/10/1.
//  Copyright © 2018年 zhangzb. All rights reserved.
//

#import "ViewController.h"
#import "FileUtil.h"
#import "AUGraphPlayer.h"
@interface ViewController ()
/** <#注释#> */
@property (nonatomic,assign) BOOL isAcc;
@end

@implementation ViewController{
    AUGraphPlayer  *graphPlayer;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    _isAcc = NO;
}



#pragma mark ———  click event

- (IBAction)playEvent:(id)sender {
    NSLog(@"Play Music...");
    if (graphPlayer) {
         [graphPlayer stop];
    }
    //    NSString* filePath = [FileUtil bundlePath:@"MiAmor.mp3"];
    NSString* filePath = [FileUtil bundlePath:@"music.m4a"];
    graphPlayer = [[AUGraphPlayer alloc] initWithFilePath:filePath];
    [graphPlayer play];
}



- (IBAction)stopEvent:(id)sender {
    NSLog(@"Stop Music...");
    [graphPlayer stop];
}


- (IBAction)SwitchEnvent:(id)sender {
    _isAcc = !_isAcc;
    [graphPlayer setInputSource:_isAcc];
}

@end
