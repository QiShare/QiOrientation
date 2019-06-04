//
//  QiNavigationController.m
//  QiNavigationBar
//
//  Created by wangdacheng on 2019/3/26.
//  Copyright © 2019 dac_1033. All rights reserved.
//

#import "QiNavigationController.h"


@interface QiNavigationController ()

@end

@implementation QiNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}



//// 在NavgationController的基类中粘贴以下代码
- (BOOL)shouldAutorotate {
    
    return self.topViewController.shouldAutorotate;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    
    return self.topViewController.supportedInterfaceOrientations;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
    
    return [self.topViewController preferredInterfaceOrientationForPresentation];
}


@end
