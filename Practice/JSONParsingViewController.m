//
//  JSONParsingViewController.m
//  Practice
//
//  Created by jiweon.lee on 2023/03/15.
//

#import "JSONParsingViewController.h"
#import "JSONWeatherCell.h"

@interface JSONParsingViewController ()

@end

@implementation JSONParsingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSError *err;
    dataList = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"https://raw.githubusercontent.com/ChoiJinYoung/iphonewithswift2/master/weather.json"]] options:NSJSONReadingAllowFragments error:&err];
    
    local = [[dataList objectForKey:@"weatherinfo"] objectForKey:@"local"];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    JSONWeatherCell *cell = [tableView dequeueReusableCellWithIdentifier:@"weather" forIndexPath:indexPath];
    
    NSDictionary *dicTemp = [local objectAtIndex:indexPath.row];

    cell.countryLabel.text = [dicTemp objectForKey:@"country"];
    NSString *weatherStr = [dicTemp objectForKey:@"weather"];
    cell.weatherLabel.text = weatherStr;
    cell.temperLabel.text = [dicTemp objectForKey:@"temperature"];
    
    if ([weatherStr isEqualToString:@"맑음"]) {
        cell.imgView.image = [UIImage imageNamed:@"sunny.png"];
    } else if ([weatherStr isEqualToString:@"비"]) {
        cell.imgView.image = [UIImage imageNamed:@"rainy.png"];
    } else if ([weatherStr isEqualToString:@"흐림"]) {
        cell.imgView.image = [UIImage imageNamed:@"cloudy.png"];
    } else if ([weatherStr isEqualToString:@"눈"]) {
        cell.imgView.image = [UIImage imageNamed:@"snow.png"];
    } else {
        cell.imgView.image = [UIImage imageNamed:@"blizzard.png"];
    }
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return local.count;
}

@end
