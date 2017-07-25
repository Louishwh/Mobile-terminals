//
//  HWHBaseCell.m
//  MES
//
//  Created by Louis.hwh on 2017/3/29.
//  Copyright © 2017年 louiskin. All rights reserved.
//

#import "HWHBaseCell.h"

@implementation HWHBaseCell

+(instancetype)cellWithTableView:(UITableView *)tableView cellID:(NSString *)cellID
{
    static NSString *ID = @"HWHBaseCell";
    id cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[self alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    return cell;
}

@end
