//
//  YC_ButtonView.h
//  BoYi_WangYi
//
//  Created by mac on 2019/4/22.
//  Copyright © 2019 李星星. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface YC_ButtonView : UIView
@property(nonatomic,strong)UIImageView *image;
@property(nonatomic,strong)UILabel *title;
-(instancetype)initWithFrame:(CGRect)frame padding:(UIEdgeInsets)pad;
-(void)addTarget:(id)target action:(SEL)selector;
@end

NS_ASSUME_NONNULL_END
