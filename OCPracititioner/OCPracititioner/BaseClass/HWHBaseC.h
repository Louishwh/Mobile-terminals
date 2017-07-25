//
//  HWHBaseVC.h
//  MES
//
//  Created by Louis.hwh on 2017/3/28.
//  Copyright © 2017年 louiskin. All rights reserved.
//

#import <UIKit/UIKit.h>

@class JGProgressHUD;

@interface HWHBaseC : UIViewController

@property(nonatomic,weak)JGProgressHUD *hud;

- (void)addHUDWithText:(NSString *)text;

@end
