//
//  QiViewController.m
//  QiBar
//
//  Created by wangdacheng on 2019/6/4.
//  Copyright © 2019 dac_1033. All rights reserved.
//

#import "QiViewController.h"

@interface QiViewController ()

@end

@implementation QiViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}



// 是否能够旋转
- (BOOL)shouldAutorotate {
    
    return NO;
}

// 支持的旋转方向
-(UIInterfaceOrientationMask)supportedInterfaceOrientations {
    
    return UIInterfaceOrientationMaskAllButUpsideDown;
}

// 模态视图初始化时的旋转方向
- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
    
    return UIInterfaceOrientationPortrait;
}


@end
