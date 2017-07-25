


#import "LocationManager.h"
#import "LocationTransformer.h"
#import <CoreLocation/CoreLocation.h>

@interface LocationManager ()<CLLocationManagerDelegate>

/** 地理位置 */
@property (nonatomic,strong)CLLocationManager *clManager;
/** 账户 */
@property (nonatomic,strong)NSString *loginName;

@end

@implementation LocationManager

- (CLLocationManager *)clManager
{
    if (!_clManager) {
        _clManager = [[CLLocationManager alloc]init];}
    return _clManager;
}

+ (void)startLocating
{
    LocationManager *lm = [[LocationManager alloc]init];
    [lm getLocation];
}

- (void)startLocating
{
    [self getLocation];
}

/** 获取和上传位置  */
- (void)getLocation
{
    self.clManager.delegate = self;
    self.clManager.distanceFilter = 15;
    self.clManager.desiredAccuracy = kCLLocationAccuracyBest;
    self.clManager.delegate = self;
    self.clManager.pausesLocationUpdatesAutomatically = NO;
    
    if ([[UIDevice currentDevice].systemVersion doubleValue] >= 8.0)
    {
//        [self.clManager requestAlwaysAuthorization];
        [self.clManager requestWhenInUseAuthorization];
    }
    if ([[UIDevice currentDevice].systemVersion doubleValue] >= 9.0) {
//        self.clManager.allowsBackgroundLocationUpdates = YES;
    }
}
#pragma mark - <CLLocationManagerDelegate>

- (void)locationManager:(CLLocationManager *)manager didChangeAuthorizationStatus:(CLAuthorizationStatus)status
{
    if (status == kCLAuthorizationStatusAuthorizedAlways || status == kCLAuthorizationStatusAuthorizedWhenInUse)
    {[self.clManager startUpdatingLocation];}
    
    if (status == kCLAuthorizationStatusNotDetermined) { }
    if (status == kCLAuthorizationStatusDenied || status == kCLAuthorizationStatusRestricted) {}
}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations
{
    if (locations != nil) {
//        LocationTransformer *transformer = [[LocationTransformer alloc]initWithLatitude:[locations lastObject].coordinate.latitude andLongitude:[locations lastObject].coordinate.longitude];
//        LocationTransformer *afterformer = [transformer transformFromGPSToGD];
        
//        self.lon = [NSString stringWithFormat:@"%f",afterformer.longitude];
//        self.lat = [NSString stringWithFormat:@"%f",afterformer.latitude];
//        self.hig = [NSString stringWithFormat:@"%f",[locations lastObject].altitude];
//        self.tim = [NSString stringWithFormat:@"%@",[locations lastObject].timestamp];
//        self.dir = [NSString stringWithFormat:@"%f",[locations lastObject].course];
//        self.spd = [NSString stringWithFormat:@"%f",[locations lastObject].speed];
//        NSArray *upLoadArray = @[self.lon,self.lat,self.hig,self.tim,self.dir,self.spd];
//        NSLog(@"%@",upLoadArray);
        
//        NSArray *upLoadArray =@[
//                                [NSString stringWithFormat:@"%f",[locations lastObject].coordinate.longitude],
//                                [NSString stringWithFormat:@"%f",[locations lastObject].coordinate.latitude],
//                                [NSString stringWithFormat:@"%f",[locations lastObject].altitude],
//                                [NSString stringWithFormat:@"%@",[locations lastObject].timestamp],
//                                [NSString stringWithFormat:@"%f",[locations lastObject].course],
//                                [NSString stringWithFormat:@"%f",[locations lastObject].speed]
//                                ];

    } // location != nil
}


- (void)startGDUpdatingLocation
{
    [self.clManager startUpdatingLocation];
}

- (void)stopGDUpdatingLocation
{
    [self.clManager stopUpdatingLocation];
}

@end
