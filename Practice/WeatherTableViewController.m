//
//  WeatherTableViewController.m
//  Practice
//
//  Created by jiweon.lee on 2023/03/13.
//

#import "WeatherTableViewController.h"
#import "WeatherCell.h"

@interface WeatherTableViewController ()

@end

@implementation WeatherTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 딕셔너리 정의(key-value)
    // NSDictionary *dictionary = [[NSDictionary alloc] initWithObjectsAndKeys:
    //                            @"object1",@"key1",
    //                            @"object2",@"key2",
    //                            @"object3",@"key3",nil];
    NSDictionary *dict1 = [[NSDictionary alloc]initWithObjectsAndKeys:@"한국",@"지역",@"비",@"날씨", nil];
    NSDictionary *dict2 = [[NSDictionary alloc]initWithObjectsAndKeys:@"일본",@"지역",@"맑음",@"날씨", nil];
    NSDictionary *dict3 = [[NSDictionary alloc]initWithObjectsAndKeys:@"중국",@"지역",@"눈",@"날씨", nil];
    NSDictionary *dict4 = [[NSDictionary alloc]initWithObjectsAndKeys:@"스페인",@"지역",@"우박",@"날씨", nil];
    NSDictionary *dict5 = [[NSDictionary alloc]initWithObjectsAndKeys:@"미국",@"지역",@"흐림",@"날씨", nil];
    NSDictionary *dict6 = [[NSDictionary alloc]initWithObjectsAndKeys:@"영국",@"지역",@"비",@"날씨", nil];
    NSDictionary *dict7 = [[NSDictionary alloc]initWithObjectsAndKeys:@"프랑스",@"지역",@"흐림",@"날씨", nil];
    NSDictionary *dict8 = [[NSDictionary alloc]initWithObjectsAndKeys:@"브라질",@"지역",@"맑음",@"날씨", nil];
    NSDictionary *dict9 = [[NSDictionary alloc]initWithObjectsAndKeys:@"스위스",@"지역",@"비",@"날씨", nil];
    NSDictionary *dict10 = [[NSDictionary alloc]initWithObjectsAndKeys:@"덴마크",@"지역",@"눈",@"날씨", nil];
    NSDictionary *dict11 = [[NSDictionary alloc]initWithObjectsAndKeys:@"스웨덴",@"지역",@"비",@"날씨", nil];
    NSDictionary *dict12 = [[NSDictionary alloc]initWithObjectsAndKeys:@"네덜란드",@"지역",@"맑음",@"날씨", nil];
    NSDictionary *dict13 = [[NSDictionary alloc]initWithObjectsAndKeys:@"크로아티아",@"지역",@"맑음",@"날씨", nil];
    NSDictionary *dict14 = [[NSDictionary alloc]initWithObjectsAndKeys:@"필리핀",@"지역",@"우박",@"날씨", nil];
    NSDictionary *dict15 = [[NSDictionary alloc]initWithObjectsAndKeys:@"독일",@"지역",@"맑음",@"날씨", nil];
    NSDictionary *dict16 = [[NSDictionary alloc]initWithObjectsAndKeys:@"헝가리",@"지역",@"비",@"날씨", nil];
    NSDictionary *dict17 = [[NSDictionary alloc]initWithObjectsAndKeys:@"벨기에",@"지역",@"눈",@"날씨", nil];
    NSDictionary *dict18 = [[NSDictionary alloc]initWithObjectsAndKeys:@"핀란드",@"지역",@"맑음",@"날씨", nil];
    NSDictionary *dict19 = [[NSDictionary alloc]initWithObjectsAndKeys:@"이탈리아",@"지역",@"맑음",@"날씨", nil];
    NSDictionary *dict20 = [[NSDictionary alloc]initWithObjectsAndKeys:@"태국",@"지역",@"우박",@"날씨", nil];
    
    dataList = [[NSArray alloc]initWithObjects:
                dict1,dict2,dict3,dict4,dict5,
                dict6,dict7,dict8,dict9,dict10,
                dict11,dict12,dict13,dict14,dict15,
                dict16,dict17,dict18,dict19,dict20, nil];
}

// cell 내용
- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    tableView.rowHeight = 70;
    
    WeatherCell *cell = [tableView dequeueReusableCellWithIdentifier:@"WeatherCell" forIndexPath:indexPath];
    
    NSDictionary *dicTemp = [dataList objectAtIndex:indexPath.row];
    
    cell.city.text = [dicTemp objectForKey:@"지역"];
    NSString *weatherStr = [dicTemp objectForKey:@"날씨"];
    cell.weather.text = weatherStr;
    
    if ([weatherStr isEqualToString:@"맑음"]) {
        cell.imageView.image = [UIImage imageNamed:@"sunny.png"];
    } else if ([weatherStr isEqualToString:@"비"]) {
        cell.imageView.image = [UIImage imageNamed:@"rainy.png"];
    } else if ([weatherStr isEqualToString:@"흐림"]) {
        cell.imageView.image = [UIImage imageNamed:@"cloudy.png"];
    } else if ([weatherStr isEqualToString:@"눈"]) {
        cell.imageView.image = [UIImage imageNamed:@"snow.png"];
    } else {
        cell.imageView.image = [UIImage imageNamed:@"blizzard.png"];
    }
    
    return cell;
}

// cell 개수
- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return dataList.count;
}


@end
