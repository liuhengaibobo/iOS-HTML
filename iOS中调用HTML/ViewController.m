//
//  ViewController.m
//  iOS中调用HTML
//
//  Created by liuheng on 16/5/26.
//  Copyright (c) 2016年 LH. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *webview;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    //加载网页
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"index" withExtension:@"html"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [self.webview loadRequest:request];
    
}
//操作网页
-(void)webViewDidFinishLoad:(UIWebView *)webView{
    
    //删除
    NSString *str1 = @"var word = document.getElementById('word');word.remove();";
//    NSString *str2 = @"word.remove();";
    
    [webView stringByEvaluatingJavaScriptFromString:str1];
//    [webView stringByEvaluatingJavaScriptFromString:str2];

    //更改内容
    NSString *str3 = @"var change = document.getElementsByClassName('change')[0];"
                    "change.innerHTML = '好你的哦!';";
    [webView stringByEvaluatingJavaScriptFromString:str3];
    
    
    //插入
    NSString *str4 = @"var img = document.createElement('img');"
                       "img.src = 'img_01.jpg';"
                       "img.width = '150';"
                       "img.height = '150';"
                       "document.body.appendChild(img)";
    
     [webView stringByEvaluatingJavaScriptFromString:str4];
    
    
    
    
    
    
    
    
    
    
    
    
    
}

@end
