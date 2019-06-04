//
//  FirstViewController.m
//  QiOrientation
//
//  Created by wangdacheng on 2019/6/4.
//  Copyright © 2019 dac_1033. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@property (nonatomic, assign) BOOL isLandscape;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupViews];
}

- (void)setupViews {
    
    CGSize size = self.view.frame.size;
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button addTarget:self action:@selector(forceLandscrape) forControlEvents:UIControlEventTouchUpInside];
    button.frame = CGRectMake(15.0, 150.0, size.width - 15.0 * 2.0, 50.0);
    button.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleBottomMargin;
    [button setTitle:@"button" forState:UIControlStateNormal];
    [button.layer setBorderWidth:2.0];
    [button.layer setBorderColor:[UIColor redColor].CGColor];
    [self.view addSubview:button];
    
    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(15, 220, size.width - 15.0 * 2.0, 50.0)];
    textField.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleBottomMargin;
    [textField.layer setBorderWidth:2.0];
    [textField.layer setBorderColor:[UIColor greenColor].CGColor];
    [self.view addSubview:textField];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [self.view endEditing:YES];
}



#pragma mark - Rotate

- (void)forceLandscrape {
    
    //[[UIApplication sharedApplication] setStatusBarOrientation:orientation];
    //[[UIApplication sharedApplication] statusBarOrientation];
    //[[UIDevice currentDevice] orientation];
    
    
    CGSize size = [UIScreen mainScreen].bounds.size;
    if (_isLandscape) {
        self.navigationController.view.transform = CGAffineTransformMakeRotation(0);
        self.navigationController.view.bounds =CGRectMake(0, 0, size.width, size.height);
    } else {
        self.navigationController.view.transform = CGAffineTransformMakeRotation(M_PI_2);
        self.navigationController.view.bounds =CGRectMake(0, 0, size.height, size.width);
    }
    _isLandscape = !_isLandscape;
}




//- (void)forceLandscrape {
//
//    if (_isLandscape) {
//        [[UIDevice currentDevice] setValue:@(UIInterfaceOrientationPortrait) forKey:@"orientation"];
//    } else {
//        [[UIDevice currentDevice] setValue:@(UIInterfaceOrientationLandscapeRight) forKey:@"orientation"];
//    }
//    _isLandscape = !_isLandscape;
//}
//
//-(BOOL)shouldAutorotate{
//
//    return YES;
//}
//
//- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
//
//    return UIInterfaceOrientationMaskAllButUpsideDown;
//}
//
//- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
//
//    return UIInterfaceOrientationPortrait;
//}




@end






































//- (void)forceOrientation {
//
//    if([[UIDevice currentDevice]respondsToSelector:@selector(setOrientation:)]) {
//
//        SEL selector = NSSelectorFromString(@"setOrientation:");
//
//        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:[UIDevice instanceMethodSignatureForSelector:selector]];
//
//        [invocation setSelector:selector];
//
//        [invocation setTarget:[UIDevice currentDevice]];
//
//        int val = UIInterfaceOrientationLandscapeLeft;//横屏
//
//        [invocation setArgument:&val atIndex:2];
//
//        [invocation invoke];
//
//    }
//}








