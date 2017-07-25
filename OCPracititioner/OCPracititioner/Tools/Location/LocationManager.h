//
//  LocationManager.h
//  CeWayManager
//
//  Created by it on 16/6/15.
//  Copyright © 2016年 ceway. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^Block)(NSArray *);

@class CLLocation;

@interface LocationManager : NSObject

@property(nonatomic)Block location_Block;
@property (nonatomic,copy)CLLocation *location;

+ (void)startLocating;
- (void)startLocating;
- (void)startGDUpdatingLocation;
- (void)stopGDUpdatingLocation;

@end
