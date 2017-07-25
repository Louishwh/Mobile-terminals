
#import "HWHConstant.h"

@implementation HWHConstant

+ (CGFloat)screenW {return [UIScreen mainScreen].bounds.size.width;}
+ (CGFloat)screenH {return [UIScreen mainScreen].bounds.size.height;}

+ (CGFloat)iPhone5sW {return 320.f;}
+ (CGFloat)iPhone5sH {return 568.f;}

+ (CGFloat)iPhone6W {return 375.f;}
+ (CGFloat)iPhone6H {return 667.f;}

+ (CGFloat)iPhone6PlusW {return 414.f;}
+ (CGFloat)iPhone6PlusH {return 736.f;}

+ (CGFloat)scaleOf5s { return self.iPhone5sW/self.screenW;}
+ (CGFloat)scaleOf6 { return self.iPhone6W/self.screenW;}
+ (CGFloat)scaleOf6Plus { return self.iPhone6PlusW/self.screenW;}

@end
