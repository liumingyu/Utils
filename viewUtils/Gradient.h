//
//  Gradient.h
//  gradient
//
//  Created by mac on 2019/4/22.
//  Copyright © 2019 mac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN
typedef enum : NSUInteger {
    gradientFromTop,
    gradientFromLeft,
} gradientDirection;

  struct RGBfloat {
    float Red;
    float Green;
    float Blue;
};
typedef struct RGBfloat RGBfloat;
CG_INLINE RGBfloat
RGBfloatMake(CGFloat red, CGFloat green, CGFloat blue)
{
    RGBfloat RGBfloat;
    RGBfloat.Red = red;
    RGBfloat.Green = green;
    RGBfloat.Blue = blue;
    return RGBfloat;
};
@interface Gradient : NSObject
+(void)gradientfrom:(RGBfloat)from tocolor:(RGBfloat )tocolor fromDirection:(gradientDirection)direction onView:(UIView*)view;
#pragma  mark - pointNinePng
+ (NSData *)p_chunkDataWithImageData:(NSData *)data;
@end

NS_ASSUME_NONNULL_END
