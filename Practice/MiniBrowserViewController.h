//
//  MiniBrowserViewController.h
//  Practice
//
//  Created by jiweon.lee on 2023/03/09.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>


@interface MiniBrowserViewController : UIViewController<UITextFieldDelegate, WKNavigationDelegate>

@property (weak, nonatomic) IBOutlet UISegmentedControl *bookmarkSegmentedControl;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet WKWebView *webView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;

- (IBAction)bookmarkAction:(id)sender;

@end
