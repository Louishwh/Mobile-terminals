//
//  UIImage+Icon.m
//  DynamicAppIcon
//
//  Created by Louis.hwh on 2017/6/19.
//  Copyright © 2017年 DY. All rights reserved.
//

#import "UIImage+Icon.h"

@implementation UIImage (Icon)

+ (void)setAppIconWithImageName:(NSString *)iconImageName
{
    if (![[UIApplication sharedApplication] supportsAlternateIcons]) {
    return;
    }

    if ([iconImageName isEqualToString:@""]) {
        iconImageName = nil;
    }
    
    [[UIApplication sharedApplication] setAlternateIconName:iconImageName completionHandler:^(NSError * _Nullable error) {
        if (error) {
            NSLog(@"更换app图标发生错误了 ： %@",error);
        }
    }];
}

@end
