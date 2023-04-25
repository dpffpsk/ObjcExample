//
//  ImageDownloadViewController.m
//  Practice
//
//  Created by jiweon.lee on 2023/03/15.
//

#import "ImageDownloadViewController.h"

@interface ImageDownloadViewController ()

@end

@implementation ImageDownloadViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

// cancel button
- (IBAction)cancelAction:(id)sender {
    [downloadTask cancel];
    [_downloadProgressView setProgress:0.0 animated:NO];
    [_activityIndicatorView stopAnimating];
}

// resume button
- (IBAction)resumeAction:(id)sender {
    [downloadTask resume];
}

// suspend button
- (IBAction)suspendAction:(id)sender {
    [downloadTask suspend];
}

// download button
- (IBAction)downloadAction:(id)sender {
    _imgView.image = nil;
    [_downloadProgressView setProgress:0.0 animated:NO];
    [_activityIndicatorView startAnimating];
    
    NSURLSessionConfiguration *sessionConfiguration = [NSURLSessionConfiguration defaultSessionConfiguration];
    NSURLSession *session = [NSURLSession sessionWithConfiguration:sessionConfiguration delegate:self delegateQueue:[NSOperationQueue mainQueue]];
    
    downloadTask = [session downloadTaskWithURL:[NSURL URLWithString:@"https://raw.githubusercontent.com/ChoiJinYoung/iphonewithswift2/master/sample.jpeg"] completionHandler:^(NSURL * location, NSURLResponse * response, NSError * error) {
        self->_imgView.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:location]];
        [self->_activityIndicatorView stopAnimating];
    }];
    [downloadTask resume];
}

/*
-(void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask didWriteData:(int64_t)bytesWritten totalBytesWritten:(int64_t)totalBytesWritten totalBytesExpectedToWrite:(int64_t)totalBytesExpectedToWrite{
//    NSLog(@"totalBytesExpectedToWrite : %lli",totalBytesExpectedToWrite);
//    NSLog(@"bytesWritten : %lli",bytesWritten);
//    NSLog(@"bytesWritten : %lli",totalBytesWritten);
    
    float progress = (float)totalBytesWritten/(float)totalBytesExpectedToWrite;
    [_downloadProgressView setProgress:progress animated:YES];
    
}

-(void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask didFinishDownloadingToURL:(NSURL *)location{
    NSData *data = [NSData dataWithContentsOfURL:location];
    _imgView.image = [UIImage imageWithData:data];
    [_activityIndicatorView stopAnimating];
}
*/
@end
