//
//  DigitalFrameViewController.h
//  Practice
//
//  Created by jiweon.lee on 2023/03/09.
//

#import <UIKit/UIKit.h>

@interface DigitalFrameViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UIButton *button;

- (IBAction)toggleAction:(id)sender;
- (IBAction)changeSpeedAction:(id)sender;

@end
