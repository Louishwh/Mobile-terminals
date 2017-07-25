//
//  HWHBaseTabBarC.m
//  OCPracititioner
//
//  Created by Louis.hwh on 2017/7/25.
//  Copyright © 2017年 Louishwh. All rights reserved.
//

#import "HWHBaseTabBarC.h"
#import "HWHBaseNaviC.h"
#import "HWHControlsC.h"
#import "HWHNewTechC.h"
#import "HWHDeviceC.h"
#import "HWHConstant.h"
#import "HWHConfigC.h"
@interface HWHBaseTabBarC ()

@end

@implementation HWHBaseTabBarC

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self addChileVCWithVC:[[HWHBaseNaviC alloc]initWithRootViewController:[HWHControlsC new]] title:NSLocalizedString(@"控件",nil) imageName:@"main_controls"];
    
    [self addChileVCWithVC:[[HWHBaseNaviC alloc]initWithRootViewController:[HWHControlsC new]] title:NSLocalizedString(@"设备",nil) imageName:@"main_device"];
    
    [self addChileVCWithVC:[[HWHBaseNaviC alloc]initWithRootViewController:[HWHControlsC new]] title:NSLocalizedString(@"新技术",nil) imageName:@"main_newtech"];
    
     [self addChileVCWithVC:[[HWHBaseNaviC alloc]initWithRootViewController:[HWHConfigC new]] title:NSLocalizedString(@"设置",nil) imageName:@"main_config"];
    
    //选中字体颜色
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor blackColor]} forState:UIControlStateSelected];
    [[UINavigationBar appearance]setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]}];
    [[UINavigationBar appearance]setBarTintColor:[UIColor blackColor]];
    
}


- (void)addChileVCWithVC:(UIViewController *)vc title:(NSString *)title imageName:(NSString *)imageName
{
    vc.title = title;
    vc.tabBarItem = [[UITabBarItem alloc]initWithTitle:title
                                image:[UIImage imageNamed:imageName]
                                selectedImage:[[UIImage imageNamed:imageName]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];

    
    [self addChildViewController:vc];
}

@end
