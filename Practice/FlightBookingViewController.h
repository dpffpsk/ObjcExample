//
//  FlightBookingViewController.h
//  Practice
//
//  Created by jiweon.lee on 2023/03/10.
//

#import <UIKit/UIKit.h>


@interface FlightBookingViewController : UIViewController<UITextFieldDelegate> {
    NSInteger buttonTag;
}

@property (weak, nonatomic) IBOutlet UIButton *departureDateButton;
@property (weak, nonatomic) IBOutlet UILabel *returnDateLabel;
@property (weak, nonatomic) IBOutlet UIButton *returnDateButton;
@property (weak, nonatomic) IBOutlet UIDatePicker *selectDatePicker;

- (IBAction)selectDateAction:(id)sender;
- (IBAction)showDatePickerAction:(id)sender;
- (IBAction)showReturnDateAction:(id)sender;

@end
