
/************************************************* 屏幕尺寸 *******************************************************/

#define  kScreenW  [UIScreen mainScreen].bounds.size.width
#define  kScreenH  [UIScreen mainScreen].bounds.size.height

#define  kiPhone5ScreenW  320.f
#define  kiPhone5ScreenH  568.f

#define  kiPhone6ScreenW  375.f
#define  kiPhone6ScreenH  667.f

#define  kiPhone6PlusSceenW  414.f
#define  kiPhone6PlusSceenH  736.f

#define  scale5sOfCurrent (iPhone5ScreenW/kCurrentScreenW)
#define  scale6OfCurrent (iPhone6ScreenW/kCurrentScreenW)
#define  scale6POfCurrent (iPhone6PlusSceenW/kCurrentScreenW)


/************************************************* 字体大小 *******************************************************/

#define k(name)font(font)  [UIFont fontWithName:(name) size:(font)]
#define kHWHFont(font)  [UIFont fontWithName:@"Kailasa-Bold" size:(font)]

/************************************************* 颜色 *******************************************************/
#define kHWHColor(R,G,B) [UIColor colorWithRed:(R)/255.0 green:(G)/255.0 blue:(B)/255.0 alpha:1.0]
#define kHWHGray(X) [UIColor colorWithRed:(X)/255.0 green:(X)/255.0 blue:(X)/255.0 alpha:1.0]
#define HWHRGBColor(rgbValue)  [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#import <UIKit/UIKit.h>

@interface HWHConstant : NSObject

+ (CGFloat)screenW;
+ (CGFloat)screenH;

+ (CGFloat)iPhone5sW;
+ (CGFloat)iPhone5sH;

+ (CGFloat)iPhone6W;
+ (CGFloat)iPhone6H;

+ (CGFloat)iPhone6PlusW;
+ (CGFloat)iPhone6PlusH;

/** 5s width Of current screen width */
+ (CGFloat)scaleOf5s;
/** 6 width Of current screen width */
+ (CGFloat)scaleOf6;
/** 6P width Of current screen width */
+ (CGFloat)scaleOf6Plus;

@end
