//
//  SignUpScreenViewController.h
//  Practice
//
//  Created by jiweon.lee on 2023/03/09.
//

#import <UIKit/UIKit.h>
#import "Header.h"

@interface SignUpScreenViewController : UIViewController<Header> // 프로토콜 예제

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *idTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UITextView *resultTextView;

- (IBAction)signUpAction:(id)sender;

@end
