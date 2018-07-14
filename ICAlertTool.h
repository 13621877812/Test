//
//  ICAlertTool.h
//  ICBase
//
//  Created by zx on 15-6-17.
//  Copyright (c) 2015年 com.jianq. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ICAlertTool : NSObject<UIAlertViewDelegate>

+ (void)alert:(NSString *)title;
+(void)ICRYAlert:(NSString*)title;
@end
