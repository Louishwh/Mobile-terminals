//
//  HWHBaseVC.m
//  MES
//
//  Created by Louis.hwh on 2017/3/28.
//  Copyright © 2017年 louiskin. All rights reserved.
//

#import "HWHBaseC.h"
#import "HWHConstant.h"

@interface HWHBaseC ()

@property(nonatomic,assign)NSInteger currentPage;

@end

@implementation HWHBaseC

- (UIStatusBarStyle)preferredStatusBarStyle
{
    self.view.backgroundColor = [UIColor whiteColor];
    return UIStatusBarStyleLightContent;
}

- (void)addHUDWithText:(NSString *)text
{
    
}

- (void)dealloc
{
//        NSLog(@"------%@ ------- 已经销毁",NSStringFromClass([self class]));
}


@end
