//
//  FlightBookingViewController.m
//  Practice
//
//  Created by jiweon.lee on 2023/03/10.
//

#import "FlightBookingViewController.h"

@interface FlightBookingViewController ()

@end

@implementation FlightBookingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    buttonTag = 0;
    _returnDateLabel.hidden = YES;
    _returnDateButton.hidden = YES;
    _selectDatePicker.hidden = YES;
}

// 키보드 return
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

// 화면 터치시 키보드 off
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
    _selectDatePicker.hidden = YES;
}

// switch button
- (IBAction)showReturnDateAction:(id)sender {
    _returnDateLabel.hidden = ![sender isOn];
    _returnDateButton.hidden = ![sender isOn];
}

// select date button
- (IBAction)showDatePickerAction:(id)sender {
    _selectDatePicker.hidden = NO;
    buttonTag = [sender tag];
}

// datePicker
- (IBAction)selectDateAction:(id)sender {
    NSDateFormatter *formatter  = [[NSDateFormatter alloc]init];
    formatter.dateFormat = @"YY-MM-dd";
    
    NSString *dateString = [formatter stringFromDate:[sender date]];
    
    if (buttonTag == 1) {
        [_departureDateButton setTitle:dateString forState:UIControlStateNormal];
    } else {
        [_returnDateButton setTitle:dateString forState:UIControlStateNormal];
    }
}

@end
