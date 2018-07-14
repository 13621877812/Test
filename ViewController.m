//
//  ViewController.m
//  ChatUI
//
//  Created by sun on 2017/9/17.
//  Copyright © 2017年 孙建伟. All rights reserved.
//

#import "ViewController.h"
#import "CameraHelper.h"
#import "UIImage+Addition.h"
#import "CacheHelper.h"
#import "MediaAttachmentHelper.h"
@interface ViewController ()
{
    UIImageView *imageView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    第二次


    UIButton *btn=[[UIButton alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    [btn addTarget:self action:@selector(present) forControlEvents:UIControlEventTouchUpInside];
    btn.backgroundColor=[UIColor redColor];
    [self.view addSubview:btn];
    
    
    
    
   imageView=[[UIImageView alloc]initWithFrame:CGRectMake(10, 300, SCREEN_WIDTH-20, 100)];
    imageView.backgroundColor=[UIColor redColor];
    [self.view addSubview:imageView];
    
   
 
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)present
{
    [[CameraHelper helper]showPickerViewControllerSourceType:UIImagePickerControllerSourceTypeCamera onViewController:self complettion:^(MediaType type, NSData *data) {
        if (type == MediaTypePhoto) {
            [[MediaAttachmentHelper helper] imageHandle:data completionCache:^(NSString *url) {
                imageView.image=[UIImage imageWithContentsOfFile:url];
            }];
            
           
        }else
        {
            
            [[CacheHelper helper] saveMediaWithMediaType:MessageBodyTypeVideo FileData:data completion:^(NSString *mediaPath) {
                
                imageView.image=[UIImage VideoThumbImage:[NSURL fileURLWithPath:mediaPath]];
                
            }];
          
        }
        
        
    }];
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
