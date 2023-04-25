//
//  SelectCarViewController.m
//  Practice
//
//  Created by jiweon.lee on 2023/03/10.
//

#import "SelectCarViewController.h"

@interface SelectCarViewController ()

@end

@implementation SelectCarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    companyName = [[NSArray alloc]initWithObjects:@"테슬라", @"람보르기니", @"포르쉐", nil];
    carModel = [[NSArray alloc]init];
    carModelImage = [[NSArray alloc]init];
    
    tesla = [[NSArray alloc]initWithObjects:@"모델S", @"모델X", nil];
    teslaImageNames = [[NSArray alloc]initWithObjects:@"tesla-model-s", @"tesla-model-x", nil];
    
    lamborghini = [[NSArray alloc]initWithObjects:@"아벤타도르", @"베네노", @"우라칸", nil];
    lamborghiniImageNames = [[NSArray alloc]initWithObjects:@"lamborghini-aventador", @"lamborghini-veneno", @"lamborghini-huracan", nil];
    
    porsche = [[NSArray alloc]initWithObjects:@"911", @"박스터", nil];
    porscheImageNames = [[NSArray alloc]initWithObjects:@"porsche-911", @"porsche-boxter", nil];
    
    carModel = tesla;
    carModelImage = teslaImageNames;
    
    _imageView.layer.cornerRadius = 50.0;
    _imageView.layer.masksToBounds = true;
}

// 컴포넌트 개수
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 2;
}

// 컴포넌트 로우 개수
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    if (component == 0) {
        return companyName.count;
    } else {
        return carModel.count;
    }
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    if (component == 0) {
        return [companyName objectAtIndex:row];
    }else{
        return [carModel objectAtIndex:row];
    }
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    if (component == 0 && row == 0) {
        carModel = tesla;
        carModelImage = teslaImageNames;
    }else if (component == 0 && row == 1){
        carModel = lamborghini;
        carModelImage = lamborghiniImageNames;
    }else if (component == 0 && row == 2){
        carModel = porsche;
        carModelImage = porscheImageNames;
    }
    
    [pickerView reloadAllComponents];
    
    _imageView.image = [UIImage imageNamed:[carModelImage objectAtIndex:[pickerView selectedRowInComponent:1]]];
}

-(CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component {
    return 80.0;
}

-(CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component {
    if (component == 0 ) {
        return 120.0;
    } else{
        return 200.0;
    }
}

@end
