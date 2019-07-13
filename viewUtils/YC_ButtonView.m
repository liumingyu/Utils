//
//  YC_ButtonView.m
//  BoYi_WangYi
//
//  Created by mac on 2019/4/22.
//  Copyright © 2019 李星星. All rights reserved.
//

#import "YC_ButtonView.h"
@implementation YC_ButtonView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(instancetype)initWithFrame:(CGRect)frame padding:(UIEdgeInsets)pad
{
    
    self =[super initWithFrame:frame];
    if (self) {
        [self setViewWithpadding:pad];
    }
    return self;
}


-(void)setViewWithpadding:(UIEdgeInsets)pad{
    
    _image = [[UIImageView alloc] initWithFrame:CGRectMake(pad.left, pad.top, self.frame.size.height-pad.top-pad.bottom, self.frame.size.height-pad.top-pad.bottom)];
    _image.userInteractionEnabled = YES;
    
    [self addSubview:_image];
    
    _title  = [[UILabel alloc] initWithFrame:CGRectMake(_image.frame.origin.x+_image.frame.size.width, pad.top, self.frame.size.width-pad.left-pad.right-_image.frame.size.width, _image.frame.size.height)];
    _title.alpha = 1;
    _title.textAlignment = NSTextAlignmentCenter;
    [self addSubview:_title];

}


-(void)addTarget:(id)target action:(SEL)selector{
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:target action:selector];
    [self addGestureRecognizer:tap];
}

@end
