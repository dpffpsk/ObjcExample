//
//  SelectCarViewController.h
//  Practice
//
//  Created by jiweon.lee on 2023/03/10.
//

#import <UIKit/UIKit.h>

@interface SelectCarViewController: UIViewController<UIPickerViewDelegate, UIPickerViewDataSource> {
    NSArray *companyName;
    
    NSArray *carModel;
    NSArray *carModelImage;
    
    NSArray *tesla;
    NSArray *teslaImageNames;
    
    NSArray *lamborghini;
    NSArray *lamborghiniImageNames;
    
    NSArray *porsche;
    NSArray *porscheImageNames;
}

@property (weak, nonatomic) IBOutlet UIImageView *imageView;


@end
