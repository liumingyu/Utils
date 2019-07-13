//
//  CommonWebVC.m
//  BoYi_WangYi
//
//  Created by mac on 2019/4/3.
//  Copyright © 2019 李星星. All rights reserved.
//

#import "CommonWebVC.h"

@implementation CommonWebVC


-(instancetype)initWithTitle:(NSString*)title Url:(NSString*)url{
    
    if (!self) {
        self = [super init];
    }
    self.atitle = title;
    self.url = url;
    return self;
}


-(void)viewDidLoad{
    
    [super viewDidLoad];
    self.title  = self.atitle;
    UIWebView *web = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT-SafeAreaTopHeight)];
    [self.view addSubview:web];
    NSURLRequest *req = [NSURLRequest requestWithURL:[NSURL URLWithString:_url]];
    [web loadRequest:req];
    
    
    
    
    
}


@end
