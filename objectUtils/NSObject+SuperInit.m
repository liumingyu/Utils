//
//  NSObject+SuperInit.m
//  BoYi_WangYi
//
//  Created by mac on 2019/6/12.
//  Copyright © 2019 李星星. All rights reserved.
//

#import "NSObject+SuperInit.h"

@implementation NSObject (SuperInit)
-(void)LZsuperInit{
    
    unsigned int outCount = 0;
    Ivar * varList = class_copyIvarList([self class], &outCount);
    for(int i = 0; i<outCount; ++i){
        Ivar ivar = varList[i];
        NSString *ivarname = [NSString stringWithUTF8String:ivar_getName(ivar)];
        if ([ivarname hasPrefix:@"_"]) {
            
            ivarname = [ivarname substringFromIndex:1];
            
        }
        NSString * ivartype = [NSString stringWithUTF8String:ivar_getTypeEncoding(ivar)];
        //把包含 @\" 的去掉，如 "@\"nsstring\"";-="">
        NSString * ivarType = [ivartype stringByTrimmingCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"@\""]];
        ivarType = [self typeWithIvarType:ivarType];
        if ([ivarType isEqualToString:@"int"]||[ivarType isEqualToString:@"float"]||[ivarType isEqualToString:@"int"]||[ivarType isEqualToString:@"double|CGFloat"]||[ivarType isEqualToString:@"NSInteger"]||[ivarType isEqualToString:@"BOOL"]) {
            
            object_setIvar(self, ivar, 0);
        }
        
        if ([ivarType isEqualToString:@"NSString"]) {
             object_setIvar(self, ivar, @"");
        }
        
        if ([ivarType isEqualToString:@"NSArray"]) {
            NSArray *aa = @[];
            object_setIvar(self, ivar, aa);
        }
}
}
    

    -(NSString*)typeWithIvarType:(NSString*)ivarType{
        
        NSString * typeString = @"";
        
        if(![ivarType isKindOfClass:[NSString class]]){
            
            return typeString;
            
        }
        
        if([ivarType isEqualToString:@"i"]){
            
            typeString = @"int";
            
        }else
            if([ivarType isEqualToString:@"f"]){
                
                typeString = @"float";
                
            }else
                if([ivarType isEqualToString:@"d"]){
                    
                    typeString = @"double|CGFloat";
                    
                }else
                    if([ivarType isEqualToString:@"q"]){
                        
                        typeString = @"NSInteger";
                        
                    }else if([ivarType isEqualToString:@"B"]){
                        
                        typeString = @"BOOL";
                        
                    }else{
                        
                        typeString = ivarType;
                        
                    }
        
        return typeString;
        
    }

@end
