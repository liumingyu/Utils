//
//  CommonWebVC.h
//  BoYi_WangYi
//
//  Created by mac on 2019/4/3.
//  Copyright © 2019 李星星. All rights reserved.
//

#import "BaseViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface CommonWebVC : UIViewController
@property(nonatomic,retain,nonnull)NSString *atitle;
@property(nonatomic,retain,nonnull)NSString *url;
-(instancetype)initWithTitle:(NSString*)title Url:(NSString*)url;
@end

NS_ASSUME_NONNULL_END
