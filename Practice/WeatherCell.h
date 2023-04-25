//
//  WeatherCell.h
//  Practice
//
//  Created by jiweon.lee on 2023/03/13.
//

#import <UIKit/UIKit.h>

@interface WeatherCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *city;
@property (weak, nonatomic) IBOutlet UILabel *weather;

@end
