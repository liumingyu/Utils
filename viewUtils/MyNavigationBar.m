//
//  MyNavigationBar.m
//  YK_Chat
//
//  Created by mac on 2019/4/30.
//  Copyright © 2019 mac. All rights reserved.
//

#import "MyNavigationBar.h"
#import "UIImage+LSCore.h"
@interface MyNavigationBar()
{
    
}
@end
@implementation MyNavigationBar

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(instancetype)initWithTitle:(NSString*)title Leftimg:(NSString*)img right:(NSString*)text rightimg:(UIImage*)rightimg imginset:(UIEdgeInsets)imginset corner:(float)corner{
    self = [super init];
    self.frame = CGRectMake(0, 0, SCREEN_WIDTH, SafeAreaTopHeight);
    _leftbutton = [[UIButton alloc] initWithFrame:CGRectMake(0, SafeAreaStatuBarHeight, 160, 44)];
    [_leftbutton setImage:[UIImage imageNamed:img] forState:UIControlStateNormal];
    [_leftbutton setTitle:title forState:UIControlStateNormal];
    _leftbutton.titleLabel.backgroundColor = _leftbutton.backgroundColor;
    _leftbutton.imageView.backgroundColor = _leftbutton.backgroundColor;
    CGSize titleSize = _leftbutton.titleLabel.bounds.size;
    CGSize imageSize = _leftbutton.imageView.bounds.size;
    
    
    _leftbutton.imageEdgeInsets = UIEdgeInsetsMake(0, 16, 0, 160-16-imageSize.width);
    _leftbutton.titleEdgeInsets = UIEdgeInsetsMake(0,16+imageSize.width,0,160-16-imageSize.width-4-titleSize.width-10);
    
    [self addSubview:_leftbutton];
   
    _rButtonView = [[YC_ButtonView alloc] initWithFrame:CGRectMake(SCREEN_WIDTH-100, SafeAreaStatuBarHeight, 95, 44) padding:imginset];
    if (corner>0) {
        _rButtonView.image.layer.cornerRadius = corner;
    }

    _rButtonView.image.clipsToBounds = YES;
    [_rButtonView.image setImage:rightimg];
    _rButtonView.title.text = text;
    [self addSubview:_rButtonView];
    self.backgroundColor = [UIColor whiteColor];
    return self;
    
}

-(instancetype)initWithTitle:(NSString*)title Leftimg:(NSString*)img right:(NSString*)text rightimg:(NSString*)rightimg back:(NSString*)back{
    self = [super init];
    self.frame = CGRectMake(0, 0, SCREEN_WIDTH, SafeAreaTopHeight);
    
    _backImg = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SafeAreaTopHeight)];
    _backImg.image =[UIImage imageNamed:back];
    [self addSubview:_backImg];
    
    
    _leftbutton = [[UIButton alloc] initWithFrame:CGRectMake(0, SafeAreaStatuBarHeight, 160, 44)];
    [_leftbutton setImage:[UIImage imageNamed:img] forState:UIControlStateNormal];
    [_leftbutton setTitle:title forState:UIControlStateNormal];
    _leftbutton.titleLabel.backgroundColor = _leftbutton.backgroundColor;
    _leftbutton.imageView.backgroundColor = _leftbutton.backgroundColor;
    CGSize titleSize = _leftbutton.titleLabel.bounds.size;
    CGSize imageSize = _leftbutton.imageView.bounds.size;
    
    
    _leftbutton.imageEdgeInsets = UIEdgeInsetsMake(0, 16, 0, 160-16-imageSize.width);
    _leftbutton.titleEdgeInsets = UIEdgeInsetsMake(0,16+imageSize.width,0,160-16-imageSize.width-4-titleSize.width-10);
    
    [self addSubview:_leftbutton];
    
    _rightbutton = [UIButton buttonWithType:UIButtonTypeCustom];
    [_rightbutton setImage:[UIImage imageNamed:rightimg] forState:UIControlStateNormal];
    [_rightbutton setTitle:text forState:UIControlStateNormal];
    _rightbutton.imageEdgeInsets = UIEdgeInsetsMake(5, 0, 5, 6);
    [self addSubview:_rightbutton];
    [_rightbutton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.offset(16);
        make.top.offset(SafeAreaStatuBarHeight);
        make.width.mas_equalTo(100);
        make.bottom.offset(0);
        
    }];
    self.backgroundColor = [UIColor whiteColor];
    return self;
}

-(void)addTarget:(id)target leftSel:(SEL)Backselector rightSel:(SEL)rightselector{
    if (Backselector) {
        [_leftbutton addTarget:target action:Backselector forControlEvents:UIControlEventTouchUpInside];
    }
    if (rightselector) {
        [_rightbutton addTarget:target action:rightselector forControlEvents:UIControlEventTouchUpInside];
        [_rButtonView addTarget:target action:rightselector];
    }

}

-(void)setLeftFont:(UIFont*)font color:(UIColor*)color{
    
    _leftbutton.titleLabel.font = font;
    [_leftbutton setTitleColor:color forState:UIControlStateNormal];
    
}

-(void)setRightFont:(UIFont*)font color:(UIColor*)color{
    
    _rightbutton.titleLabel.font = font;
    [_rightbutton setTitleColor:color forState:UIControlStateNormal];
    _rButtonView.title.font = font;
    _rButtonView.title.textColor = color;
}

@end
