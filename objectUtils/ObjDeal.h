//
//  ObjDeal.h
//  BoYi_WangYi
//
//  Created by mac on 2019/3/23.
//  Copyright © 2019年 李星星. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ObjDeal : NSObject

+(BOOL)isemperty:(NSString*)str;
+(BOOL)isPhone:(NSString *)phone;
+(BOOL)isIdentify:(NSString*)identifier;
@end

NS_ASSUME_NONNULL_END
