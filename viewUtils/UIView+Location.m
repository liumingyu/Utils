//
//  UIView+Location.m
//  BoYi_WangYi
//
//  Created by mac on 2019/3/23.
//  Copyright © 2019年 李星星. All rights reserved.
//

#import "UIView+Location.h"

@implementation UIView (Location)
-(CGFloat)left{
    
    return self.frame.origin.x;
}


-(CGFloat)right{
    return self.frame.origin.x +[self width];
    
}
-(CGFloat)bottom{
    return self.frame.origin.y+[self height];
}
-(CGFloat)top{
    return self.frame.origin.y;
}

-(CGFloat)height{
    return self.frame.size.height;
}
-(CGFloat)width{
    return self.frame.size.width;
}
-(CGFloat)midX{
    return ([self left]+[self right])/2;
}
-(CGFloat)midY{
    
    return ([self top]+[self bottom])/2;
}
- (void)setWidth:(CGFloat)width {
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}
@end
