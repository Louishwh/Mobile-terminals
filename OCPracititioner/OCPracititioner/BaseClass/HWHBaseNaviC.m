//
//  HWHBaseNaviC.m
//  MES
//
//  Created by Louis.hwh on 2017/3/28.
//  Copyright © 2017年 louiskin. All rights reserved.
//

#import "HWHBaseNaviC.h"

@interface HWHBaseNaviC ()

@end

@implementation HWHBaseNaviC

- (void)viewDidLoad
{
    [super viewDidLoad];
    
//    self.navigationBar.barTintColor =  [UIColor colorWithRed: 15/255.0 green: 145/255.0 blue: 230/255.0 alpha: 1.0];
//    self.navigationBar.translucent = NO;
}

- (UIViewController *)childViewControllerForStatusBarStyle
{
    return self.topViewController;
}



@end
