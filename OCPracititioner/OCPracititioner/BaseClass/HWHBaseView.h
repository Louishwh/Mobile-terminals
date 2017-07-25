//
//  HWHBaseView.h
//  MES
//
//  Created by Louis.hwh on 2017/3/29.
//  Copyright © 2017年 louiskin. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^DataBlock)(NSString *) ;
typedef void(^ActionBlock) ();
typedef void(^CellActionBlock)(NSInteger cellIndex);

@interface HWHBaseView : UIView 
{
    UITableView *_table;
    UIImageView *_imageV;
}
/** 刷新 */
@property(nonatomic,copy)ActionBlock refreshBlock;
/** 加载更多 */
@property(nonatomic,copy)ActionBlock loadMoreBlock;
/** 搜索 */
@property(nonatomic,copy)ActionBlock searchBlock;
/** cell点击  */
@property(nonatomic,copy)CellActionBlock cellActionBlock;
/** 回调内容 */
@property(nonatomic,copy)DataBlock contentBlock;
/** 回调开始日期 */
@property(nonatomic,copy)DataBlock startDateBlock;
/** 回调结束日期 */
@property(nonatomic,copy)DataBlock endDateblock;
/** 类型选择 */
@property(nonatomic,copy)DataBlock typeBackblock;

@end
