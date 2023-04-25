//
//  DetailViewController.m
//  Practice
//
//  Created by jiweon.lee on 2023/03/13.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    _imgView.layer.cornerRadius = 50.0;
    _imgView.layer.masksToBounds = YES;
    
    _nameLabel.text = [_detailData objectForKey:@"name"];
    _amountLabel.text = [_detailData objectForKey:@"amount"];
    _valueLabel.text = [_detailData objectForKey:@"value"];
    
    _imgView.image = [UIImage imageNamed:[_detailData objectForKey:@"image"]];
}

@end
