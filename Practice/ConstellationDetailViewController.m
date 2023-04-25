//
//  ConstellationDetailViewController.m
//  Practice
//
//  Created by jiweon.lee on 2023/03/14.
//

#import "ConstellationDetailViewController.h"

@interface ConstellationDetailViewController ()

@end

@implementation ConstellationDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    NSLog(@"imageName : %@", _imageName);
    
    UIImage *img = [UIImage imageNamed:_imageName];
    _constellationImage.image = img;
    _constellationImage.contentMode = UIViewContentModeScaleAspectFit;
}

@end
