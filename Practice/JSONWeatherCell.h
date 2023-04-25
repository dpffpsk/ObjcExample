//
//  JSONWeatherCell.h
//  Practice
//
//  Created by jiweon.lee on 2023/03/15.
//

#import <UIKit/UIKit.h>

@interface JSONWeatherCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imgView;
@property (weak, nonatomic) IBOutlet UILabel *countryLabel;

@property (weak, nonatomic) IBOutlet UILabel *weatherLabel;
@property (weak, nonatomic) IBOutlet UILabel *temperLabel;


@end
