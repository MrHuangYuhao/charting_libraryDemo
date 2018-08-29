//
//  ViewController.m
//  charting_libraryDemo
//
//  Created by HYH on 2018/8/29.
//  Copyright © 2018年 HYH. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UIWebViewDelegate>
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIWebView *webView = [[UIWebView alloc]initWithFrame:self.view.bounds];
    webView.delegate = self;
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"mobile_white" ofType:@"html"];

    NSString *htmlString = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];

    NSString *basePath = [[NSBundle mainBundle] bundlePath];

    NSURL *baseURL = [NSURL fileURLWithPath:basePath];

    [webView loadHTMLString:htmlString baseURL:baseURL];
    
    [self.view addSubview:webView];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView{
    NSLog(@"加载完成");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
