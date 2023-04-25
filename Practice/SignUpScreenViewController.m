//
//  SignUpScreenViewController.m
//  Practice
//
//  Created by jiweon.lee on 2023/03/09.
//

#import "SignUpScreenViewController.h"

@interface SignUpScreenViewController ()

@end

@implementation SignUpScreenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 코드 상으로 delegate를 하는 경우
    // _nameTextField.delegate = self
}

// 터치 이벤트 발생시 키보드 off
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

// return 클릭시 키보드 off
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    // storyboard에서 delegate를 해준 경우
    [textField resignFirstResponder];
    
    // 코드 상으로 delegate를 하는 경우
    // [_nameTextField resignFirstResponder];
    
    return YES;
}

- (IBAction)signUpAction:(id)sender {
    _resultTextView.text = [NSString stringWithFormat:@"%@님 가입을 축하 드립니다.", _nameTextField.text];
}

// 프로토콜 예제
- (void)Hello {
    NSLog(@"protocol test");
}

@end
