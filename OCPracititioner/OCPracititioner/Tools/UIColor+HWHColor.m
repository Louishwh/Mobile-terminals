//
//  UIColor+HWHColor.m
//  OCPracititioner
//
//  Created by Louis.hwh on 2017/7/25.
//  Copyright © 2017年 Louishwh. All rights reserved.
//

#import "UIColor+HWHColor.h"
#import "HWHConstant.h"
@implementation UIColor (HWHColor)

+ (UIColor *)randomColor
{
    CGFloat red = (arc4random() % 255);
    CGFloat green = (arc4random() % 255);
    CGFloat blue = (arc4random() % 255);
    
    return kHWHColor(red, green, blue);
}

@end
