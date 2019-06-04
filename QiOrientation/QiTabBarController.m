//
//  QiTabBarController.m
//  QiBar
//
//  Created by wangdacheng on 2019/4/8.
//  Copyright © 2019 dac_1033. All rights reserved.
//

#import "QiTabBarController.h"
#import "QiNavigationController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"

@interface QiTabBarController () <UITabBarControllerDelegate>

@property (strong, nonatomic) NSMutableArray<UIImage *> *imgArr;

@end

@implementation QiTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupChildControllers];
}

- (void)setupChildControllers {
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.delegate = self;
    
    FirstViewController *first = [[FirstViewController alloc] init];
    QiNavigationController *firstNav = [[QiNavigationController alloc] initWithRootViewController:first];
    first.title = @"firstController";
    firstNav.tabBarItem.title = @"FirTab";
    
    SecondViewController *second = [[SecondViewController alloc] init];
    QiNavigationController *secondNav = [[QiNavigationController alloc] initWithRootViewController:second];
    second.title = @"secondController";
    secondNav.tabBarItem.title = @"SecTab";
    
    self.viewControllers = @[firstNav, secondNav];
}



////  在TabbarController的基类中粘贴以下代码
- (BOOL)shouldAutorotate {
    
    return self.selectedViewController.shouldAutorotate;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    
    return self.selectedViewController.supportedInterfaceOrientations;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
    
    return self.selectedViewController.preferredInterfaceOrientationForPresentation;
}


@end
