//
//  HWHBaseM.h
//  MES
//
//  Created by Louis.hwh on 2017/3/30.
//  Copyright © 2017年 louiskin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HWHBaseM : NSObject

+ (instancetype )extractModelWithDictionary:(NSDictionary *)dic;

+ (NSArray *)extractModelsArrayWithDictionary:(NSDictionary *)dic;

@end
