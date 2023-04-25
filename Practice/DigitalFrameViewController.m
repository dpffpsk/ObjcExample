//
//  DigitalFrameViewController.m
//  Practice
//
//  Created by jiweon.lee on 2023/03/09.
//

#import "DigitalFrameViewController.h"

@interface DigitalFrameViewController ()

@end

@implementation DigitalFrameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSArray *cuteImages = [[NSArray alloc] initWithObjects:
                           [UIImage imageNamed:@"1.jpg"],
                           [UIImage imageNamed:@"2.jpg"],
                           [UIImage imageNamed:@"3.jpg"],
                           [UIImage imageNamed:@"4.jpg"],
                           [UIImage imageNamed:@"5.jpg"],
                           [UIImage imageNamed:@"6.jpg"],
                           [UIImage imageNamed:@"7.jpg"],
                           [UIImage imageNamed:@"8.jpg"],
                           [UIImage imageNamed:@"9.jpg"],
                           [UIImage imageNamed:@"10.jpg"],
                           [UIImage imageNamed:@"11.jpg"],
                           [UIImage imageNamed:@"12.jpg"],
                           [UIImage imageNamed:@"13.jpg"],
                           [UIImage imageNamed:@"14.jpg"],
                           [UIImage imageNamed:@"15.jpg"],
                           nil];
    
    _imageView.animationImages = cuteImages;
    _imageView.animationDuration = 15.0;
}

// 슬라이드 이동
- (IBAction)changeSpeedAction:(id)sender {
    _imageView.animationDuration = 15-_slider.value;
    [_imageView startAnimating];
    [_button setTitle:@"Stop" forState:UIControlStateNormal];
    
    NSString *str = [[NSString alloc]initWithFormat:@"%.2f", _slider.value];
    _label.text = str;
}

// 버튼 클릭
- (IBAction)toggleAction:(id)sender {
    if ([_imageView isAnimating]) {
        [_imageView stopAnimating];
        [_button setTitle:@"Start" forState:UIControlStateNormal];
    } else {
        [_imageView startAnimating];
        [_button setTitle:@"Stop" forState:UIControlStateNormal];
    }
}

@end
