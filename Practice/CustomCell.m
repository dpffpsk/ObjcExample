//
//  CustomCell.m
//  Practice
//
//  Created by jiweon.lee on 2023/03/13.
//

#import "CustomCell.h"

@implementation CustomCell

- (void)awakeFromNib {
    [super awakeFromNib];
    _imgView.layer.cornerRadius = 50.0;
    _imgView.layer.masksToBounds = YES;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
