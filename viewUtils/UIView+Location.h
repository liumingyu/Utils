//
//  UIView+Location.h
//  BoYi_WangYi
//
//  Created by mac on 2019/3/23.
//  Copyright © 2019年 李星星. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (Location)
@property(nonatomic,assign)CGFloat left;
@property(nonatomic,assign)CGFloat right;
@property(nonatomic,assign)CGFloat top;
@property(nonatomic,assign)CGFloat bottom;
@property(nonatomic,assign)CGFloat width;
@property(nonatomic,assign)CGFloat height;
@property(nonatomic,assign)CGFloat midX;
@property(nonatomic,assign)CGFloat midY;

@end

NS_ASSUME_NONNULL_END
