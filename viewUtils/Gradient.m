//
//  Gradient.m
//  gradient
//
//  Created by mac on 2019/4/22.
//  Copyright © 2019 mac. All rights reserved.
//

#import "Gradient.h"

@implementation Gradient
+(void)gradientfrom:(RGBfloat)from tocolor:(RGBfloat)tocolor fromDirection:(gradientDirection)direction onView:(UIView*)view{
    float height = view.bounds.size.height;
    NSMutableArray *colorarr = [NSMutableArray array];
    NSMutableArray *pointarr = [NSMutableArray array];
    if (direction==gradientFromTop) {
        for (int i = 0; i<300; i++) {
            float Red = from.Red+(tocolor.Red-from.Red)/300.0*i;
            float Green = from.Green+(tocolor.Green-from.Green)/300.0*i;
            float Blue = from.Blue+(tocolor.Blue-from.Blue)/300.0*i;
            float point =  i/300.0;
            NSNumber *pointnum = [NSNumber numberWithFloat:point];
            [pointarr addObject:pointnum];
            UIColor *color = RGB(Red, Green, Blue);
            [colorarr addObject:(id)[color CGColor]];
        }
    }
    
    if (direction ==gradientFromLeft) {
        for (int i = 0; i<300; i++) {
            float Red = from.Red+(tocolor.Red-from.Red)/300.0*i;
            float Green = from.Green+(tocolor.Green-from.Green)/300.0*i;
            float Blue = from.Blue+(tocolor.Blue-from.Blue)/300.0*i;
            float point =  i/300.0;
            NSNumber *pointnum = [NSNumber numberWithFloat:point];
            [pointarr addObject:pointnum];
            UIColor *color = RGB(Red, Green, Blue);
            [colorarr addObject:(id)[color CGColor]];
        }
    }
    
    CAGradientLayer *layer = [[CAGradientLayer alloc] init];
    layer.frame =  view.bounds;
    layer.startPoint = CGPointMake(0, 0);
    layer.endPoint = CGPointMake(1,1);
     layer.locations = pointarr;
    layer.backgroundColor = [UIColor redColor].CGColor;
    [layer setColors:colorarr];
    [view.layer addSublayer:layer];
    
}


@end
