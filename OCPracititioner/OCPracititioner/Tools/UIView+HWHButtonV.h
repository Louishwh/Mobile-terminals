//
//  UIView+HWHButtonV.h
//  OCPracititioner
//
//  Created by Louis.hwh on 2017/7/25.
//  Copyright © 2017年 Louishwh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (HWHButtonV)

+ (UIView*)getButtonViewWithTitleArray:(NSArray *)titleArray handler: (void (^)(NSString *title))buttonHandler;

@end
