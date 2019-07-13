//
//  UIImage+LSCore.m
//  BoYi_WangYi
//
//  Created by mac on 2019/5/29.
//  Copyright © 2019 李星星. All rights reserved.
//

#import "UIImage+LSCore.h"

@implementation UIImage (LSCore)

- (UIImage *)setCornerWithRadius:(CGFloat)radius andSize:(CGSize)size
{
    //开启图形上下文
    UIGraphicsBeginImageContext(size);
    //绘制圆角矩形
    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:rect byRoundingCorners:UIRectCornerAllCorners cornerRadii:CGSizeMake(radius, radius)];
    //将Path添加到上下文中
    CGContextAddPath(UIGraphicsGetCurrentContext(), path.CGPath);
    //裁剪上下文
    CGContextClip(UIGraphicsGetCurrentContext());
    //将图片绘制到上下文中
    [self drawInRect:rect];
    //设置绘制模式
    CGContextDrawPath(UIGraphicsGetCurrentContext(), kCGPathFillStroke);
    //获取图片
    UIImage *output = UIGraphicsGetImageFromCurrentImageContext();
    //关闭上下文
    UIGraphicsEndImageContext();
    //返回裁剪好的图片
    return output;
}
@end
