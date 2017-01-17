//
//  myHUD.h
//  ceshi
//
//  Created by MB.Lee on 17/1/17.
//  Copyright © 2017年 com.coubi.ii. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface myHUD : NSObject
+(void)showSuccess:(NSString *)msg;
+(void)showError:(NSString *)msg;
+(void)loading:(NSString *)msg;
+(void)hide;

@end
