//
//  HWHConfigurer.m
//  OCPracititioner
//
//  Created by Louis.hwh on 2017/7/25.
//  Copyright © 2017年 Louishwh. All rights reserved.
//

#import "HWHConfigurer.h"
#import "NSBundle+Language.h"
@implementation HWHConfigurer

+(void)configureLanguage
{
    if ([[NSUserDefaults standardUserDefaults] objectForKey:@"Language_configure"] && ![[[NSUserDefaults standardUserDefaults] objectForKey:@"Language_configure"] isEqualToString:@""]) {
        [NSBundle setLanguage:[[NSUserDefaults standardUserDefaults] objectForKey:@"Language_configure"]];
    }
}

@end
