//
//  webViewController.m
//  CodeChallenge1
//
//  Created by Wade Sellers on 10/2/14.
//  Copyright (c) 2014 Wade Sellers. All rights reserved.
//

#import "webViewController.h"

@interface webViewController () <UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UINavigationItem *answerBar2;
@property (weak, nonatomic) IBOutlet UIWebView *webView;


@end

@implementation webViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.answerBar2.title = self.answerAsString;

    [self loadHomePage];


}

- (void)webViewDidStartLoad:(UIWebView *)webView {
    [UIApplication sharedApplication].networkActivityIndicatorVisible = YES;
}

- (void)webViewDidFinishLoad:(UIWebView *)webView {
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [self loadURLString:textField.text];
    return YES;
}

- (void) loadURLString: (NSString *)urlString {
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
    [self.webView loadRequest:urlRequest];
}

- (void) loadHomePage {
    [self loadURLString:@"http://www.mobilemakers.co"];
}

@end
