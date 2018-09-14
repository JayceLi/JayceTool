//
//  ViewController.m
//  JayceTool
//
//  Created by EX-LIJUN020 on 2018/7/27.
//  Copyright © 2018年 Jayce. All rights reserved.
//

#import "ViewController.h"
#import <UIButton+Extension.h>

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *testBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
     /// 测试修改 --
    /// 测试修改 tag 2
    
    /// 测试修改 tag 3
    
    /// 测试修改 tag 4
    
    [self.testBtn setEnlargedEdgeWithTop:15 left:15 botttom:15 right:15];
    
#if TARGET_IPHONE_SIMULATOR
    NSLog(@"run on simulator");
#define SIMULATOR_TEST
#else
    //不定义SIMULATOR_TEST这个宏
    NSLog(@"run on device");
#endif
    
#ifndef SIMULATOR_TEST
   NSLog(@"run on device2");
#endif
    
}

- (IBAction)buttonAction:(id)sender {
  
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
