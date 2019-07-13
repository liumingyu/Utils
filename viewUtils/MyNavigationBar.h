//
//  MyNavigationBar.h
//  YK_Chat
//
//  Created by mac on 2019/4/30.
//  Copyright © 2019 mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YC_ButtonView.h"
NS_ASSUME_NONNULL_BEGIN

@interface MyNavigationBar : UIView
@property(nonatomic,strong)    UIImageView *backImg;
@property(nonatomic,strong)UIButton *leftbutton;
@property(nonatomic,strong)UIButton *rightbutton;
@property(nonatomic,strong)YC_ButtonView *rButtonView;
-(instancetype)initWithTitle:(NSString*)title Leftimg:(NSString*)img right:(NSString*)text rightimg:(UIImage*)rightimg imginset:(UIEdgeInsets)imginset corner:(float)corner;
-(instancetype)initWithTitle:(NSString*)title Leftimg:(NSString*)img right:(NSString*)text rightimg:(NSString*)rightimg back:(NSString*)back;
-(void)addTarget:(id)target leftSel:(SEL)Backselector rightSel:(SEL)rightselector;
-(void)setLeftFont:(UIFont*)font color:(UIColor*)color;
-(void)setRightFont:(UIFont*)font color:(UIColor*)color;

@end

NS_ASSUME_NONNULL_END
