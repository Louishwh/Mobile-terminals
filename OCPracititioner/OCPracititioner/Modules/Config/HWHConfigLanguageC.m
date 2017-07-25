//
//  HWHTableViewController.m
//  OCPracititioner
//
//  Created by Louis.hwh on 2017/7/25.
//  Copyright © 2017年 Louishwh. All rights reserved.
//

#import "HWHConfigLanguageC.h"
#import "NSBundle+Language.h"
#import "HWHBaseTabBarC.h"

@interface HWHConfigLanguageC ()

@end

@implementation HWHConfigLanguageC
{
    NSArray *_languageArray;
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    _languageArray = @[@"中文简体",@"英文",@"法文",@"阿拉伯文",@"俄罗斯文"];
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _languageArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellID = @"cellID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID forIndexPath:indexPath];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    
    cell.textLabel.text = _languageArray[indexPath.row];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self handleActionWithRow:indexPath.row];
}

- (void)handleActionWithRow:(NSInteger)row
{
    NSString *language = @"zh-Hans";
    if ([_languageArray[row] isEqualToString:@"中文简体"]) {
        language = @"zh-Hans";
    }else if ([_languageArray[row] isEqualToString:@"英文"]){
        language =@"en";
    }else if ([_languageArray[row] isEqualToString:@"法文"]){
        language = @"fr";
    }else if ([_languageArray[row] isEqualToString:@"阿拉伯文"]){
        language = @"ar";
    }else if ([_languageArray[row] isEqualToString:@"俄罗斯文"]){
        language = @"ru";
    }
    
    // 设置语言
    [NSBundle setLanguage:language];
    
    // 然后将设置好的语言存储好，下次进来直接加载
    [[NSUserDefaults standardUserDefaults] setObject:language forKey:@"Language_configure"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    // 我们要把系统windown的rootViewController替换掉
    HWHBaseTabBarC *tab = [[HWHBaseTabBarC alloc] init];
    [UIApplication sharedApplication].keyWindow.rootViewController = tab;
    
    [self.navigationController popViewControllerAnimated:YES];
}



@end
