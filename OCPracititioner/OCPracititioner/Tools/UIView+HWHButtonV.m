//
//  UIView+HWHButtonV.m
//  OCPracititioner
//
//  Created by Louis.hwh on 2017/7/25.
//  Copyright © 2017年 Louishwh. All rights reserved.
//

#import "UIView+HWHButtonV.h"
#import "HWHConstant.h"
#import "UIColor+HWHColor.h"

@implementation UIView (HWHButtonV)

+ (UIView*)getButtonViewWithTitleArray:(NSArray *)titleArray handler: (void (^)(NSString *title))buttonHandler
{
    UIScrollView *view = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 64,kScreenW , kScreenH)];
    
    NSInteger clo = 4;
    NSInteger buttonH = 40;
    
    for (NSUInteger i = 0; i<titleArray.count; i++) {
        UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake((titleArray.count%4), 40*(titleArray.count/4), kScreenW/clo, buttonH)];
        button.backgroundColor = [UIColor randomColor];
    }
    
    
    return  view;
}

@end

