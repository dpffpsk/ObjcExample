//
//  ImageDownloadViewController.h
//  Practice
//
//  Created by jiweon.lee on 2023/03/15.
//

#import <UIKit/UIKit.h>

@interface ImageDownloadViewController : UIViewController<NSURLSessionDownloadDelegate> {
    NSURLSessionTask *downloadTask;
}

@property (weak, nonatomic) IBOutlet UIImageView *imgView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicatorView;
@property (weak, nonatomic) IBOutlet UIProgressView *downloadProgressView;

- (IBAction)downloadAction:(id)sender;
- (IBAction)suspendAction:(id)sender;
- (IBAction)resumeAction:(id)sender;
- (IBAction)cancelAction:(id)sender;

@end
