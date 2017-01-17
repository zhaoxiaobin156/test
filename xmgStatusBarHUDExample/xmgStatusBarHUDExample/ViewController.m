//
//  ViewController.m
//  xmgStatusBarHUDExample
//
//  Created by MB.Lee on 17/1/17.
//  Copyright © 2017年 com.coubi.ii. All rights reserved.
//

#import "ViewController.h"
#import "myHUD.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)button:(id)sender {
    [myHUD showSuccess:@"success"];
}
- (IBAction)error:(id)sender {
    [myHUD showError:@"error"];
}
- (IBAction)hide:(id)sender {
    [myHUD hide];
}
- (IBAction)loading:(id)sender {
    [myHUD loading:@"loading"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
