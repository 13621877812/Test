//
//  ICAlertTool.m
//  ICBase
//
//  Created by zx on 15-6-17.
//  Copyright (c) 2015年 com.jianq. All rights reserved.
//

#import "ICAlertTool.h"
#import <UIKit/UIKit.h>






@implementation ICAlertTool

+ (void)alert:(NSString *)title
{
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"提示" message:title delegate:nil cancelButtonTitle:nil otherButtonTitles:nil, nil];
    [alert show];

    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [alert dismissWithClickedButtonIndex:alert.cancelButtonIndex animated:YES];
    });

}
+(void)ICRYAlert:(NSString *)title{
//    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"提示" message:title delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确认", nil];
//    [alert show];
   UIAlertController* alertVC= [UIAlertController alertControllerWithTitle:@"提示" message:title preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction* actionOne=[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    UIAlertAction* actionTwo=[UIAlertAction actionWithTitle:@"确认" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        NSURL * URL = [NSURL URLWithString:@"prefs:root=INTERNET_TETHERING"];
        if ([[UIApplication sharedApplication] canOpenURL:URL]) {
            [[UIApplication sharedApplication] openURL:URL];
        }
    }];
    [alertVC addAction:actionOne];
    [alertVC addAction:actionTwo];
  
    [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:alertVC animated:YES completion:^{
        
    }];

}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    
    
    if (buttonIndex==1) {
        NSURL * URL = [NSURL URLWithString:UIApplicationOpenSettingsURLString];
        if ([[UIApplication sharedApplication] canOpenURL:URL]) {
            [[UIApplication sharedApplication] openURL:URL];
        }
               
        
    }
}
@end
