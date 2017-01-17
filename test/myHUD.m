
//
//  myHUD.m
//  ceshi
//
//  Created by MB.Lee on 17/1/17.
//  Copyright © 2017年 com.coubi.ii. All rights reserved.
//

#import "myHUD.h"
#import "UIView+Frame.h"

@implementation myHUD
static UIWindow *window_;
+(void)showWindow{
    window_ = [[UIWindow alloc]init];
    window_.backgroundColor = [[UIColor yellowColor] colorWithAlphaComponent:0.5];
    window_.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 200);
    window_.hidden = NO;
}
+(void)showTitle:(NSString *)title withImageName:(NSString *)imageName{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:title forState:0];
    [button setTitleColor:[UIColor greenColor] forState:0];
    [button setImage:[UIImage imageNamed:imageName] forState:0];
    button.frame = window_.bounds;
    
    [button setTitleEdgeInsets:UIEdgeInsetsMake(100, 100, 0, 0)];
    
    [window_ addSubview:button];
}

+(void)showError:(NSString *)msg{
    [self showWindow];
    [self showTitle:msg withImageName:@"icon.bundle/1"];
}

+(void)showSuccess:(NSString *)msg{
    [self showWindow];
    [self showTitle:msg withImageName:@"icon.bundle/2"];
}

+(void)hide{
    window_ = nil;
}
+(void)loading:(NSString *)msg{
    [self showWindow];
    
    CGFloat width = [msg sizeWithAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:30]}].width;
    
    
    UILabel *label = [[UILabel alloc]init];
    label.height = window_.bounds.size.height;
    label.width = width;
    label.font = [UIFont systemFontOfSize:30];
    label.text = msg;
    label.backgroundColor = [[UIColor blueColor] colorWithAlphaComponent:0.3];
    
    UIActivityIndicatorView *indicator = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
    [indicator startAnimating];
    indicator.backgroundColor = [[UIColor redColor] colorWithAlphaComponent:0.3];
    indicator.centerY = window_.bounds.size.height * 0.5;
    indicator.centerX = (window_.bounds.size.width -label.width) *0.5;
    
    
    label.x = CGRectGetMaxX(indicator.frame);
    label.y = indicator.y;
    [label sizeToFit];
    
    
    [window_ addSubview:label];
    [window_ addSubview:indicator];
    
    
    
    
    
}



@end
