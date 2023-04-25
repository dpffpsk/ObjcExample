//
//  MiniBrowserViewController.m
//  Practice
//
//  Created by jiweon.lee on 2023/03/09.
//

#import "MiniBrowserViewController.h"

@interface MiniBrowserViewController ()

@end

@implementation MiniBrowserViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSString *urlString = @"https://www.google.com";
    [_webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:urlString]]];
    _textField.text = urlString;

}

// Segment 클릭 이벤트
- (IBAction)bookmarkAction:(id)sender {
    NSLog(@"bookmarkAction");
    
    NSString *bookMarkURL = [_bookmarkSegmentedControl titleForSegmentAtIndex:_bookmarkSegmentedControl.selectedSegmentIndex];
    NSString *urlString = [[NSString alloc]initWithFormat:@"https://www.%@.com", bookMarkURL];
    [_webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:urlString]]];
    _textField.text = urlString;
}

// UITextFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    NSLog(@"textFieldShouldEndEditing");
    
    NSString *urlString = _textField.text;
    
    if (![urlString hasPrefix:@"https://"]) {
        urlString = [[NSString alloc]initWithFormat:@"https://%@", urlString];
    }
    
    [_webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:urlString]]];
    [_textField resignFirstResponder]; // 키보드 off
    
    return YES;
}


// WKNavigationDelegate
- (void)webView:(WKWebView *)webView didCommitNavigation:(WKNavigation *)navigation {
    NSLog(@"webView didCommit");
    [_activityIndicator startAnimating];
}

- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation {
    NSLog(@"webView didFinish");
    [_activityIndicator stopAnimating];
}

@end
