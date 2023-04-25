//
//  CustomTableViewController.m
//  Practice
//
//  Created by jiweon.lee on 2023/03/13.
//

#import "CustomTableViewController.h"
#import "CustomCell.h"
#import "DetailViewController.h"

@interface CustomTableViewController ()

@end

@implementation CustomTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSDictionary *item1=[[NSDictionary alloc]initWithObjectsAndKeys:@"사과",@"name",@"apple.jpeg",@"image",@"6",@"amount",@"3000원",@"value",nil];
    NSDictionary *item2=[[NSDictionary alloc]initWithObjectsAndKeys:@"블루베리",@"name",@"blueberry.jpg",@"image",@"10",@"amount",@"30000원",@"value",nil];
    NSDictionary *item3=[[NSDictionary alloc]initWithObjectsAndKeys:@"당근",@"name",@"carrot.jpg",@"image",@"13",@"amount",@"5000원",@"value",nil];
    NSDictionary *item4=[[NSDictionary alloc]initWithObjectsAndKeys:@"체리",@"name",@"cherry.png",@"image",@"1",@"amount",@"2000원",@"value",nil];
    NSDictionary *item5=[[NSDictionary alloc]initWithObjectsAndKeys:@"포도",@"name",@"grape.jpg",@"image",@"13",@"amount",@"1000원",@"value",nil];
    NSDictionary *item6=[[NSDictionary alloc]initWithObjectsAndKeys:@"키위",@"name",@"kiwi.png",@"image",@"2",@"amount",@"15000원",@"value",nil];
    NSDictionary *item7=[[NSDictionary alloc]initWithObjectsAndKeys:@"레몬",@"name",@"lemon.png",@"image",@"3",@"amount",@"6000원",@"value",nil];
    NSDictionary *item8=[[NSDictionary alloc]initWithObjectsAndKeys:@"라임",@"name",@"lime.jpg",@"image",@"4",@"amount",@"4000원",@"value",nil];
    NSDictionary *item9=[[NSDictionary alloc]initWithObjectsAndKeys:@"고기",@"name",@"meat.jpg",@"image",@"5",@"amount",@"2000원",@"value",nil];
    NSDictionary *item10=[[NSDictionary alloc]initWithObjectsAndKeys:@"딸기",@"name",@"strawberry.jpg",@"image",@"7",@"amount",@"8000원",@"value",nil];
    NSDictionary *item11=[[NSDictionary alloc]initWithObjectsAndKeys:@"토마토",@"name",@"tomato.png",@"image",@"30",@"amount",@"3000원",@"value",nil];
    NSDictionary *item12=[[NSDictionary alloc]initWithObjectsAndKeys:@"야채",@"name",@"vegetable.jpg",@"image",@"40",@"amount",@"7000원",@"value",nil];
    NSDictionary *item13=[[NSDictionary alloc]initWithObjectsAndKeys:@"멜론",@"name",@"watermelon.png",@"image",@"5",@"amount",@"10000원",@"value",nil];
    
    itemList = [[NSArray alloc]initWithObjects:item1,item2,item3,item4,item5,item6,item7,item8,item9,item10,item11,item12,item13,nil];
    
    UIImageView *backgroundImageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"background1.png"]];
    backgroundImageView.contentMode = UIViewContentModeScaleAspectFill;
    backgroundImageView.frame = self.tableView.frame;
    
    self.tableView.backgroundView = backgroundImageView;
}

#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return itemList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    tableView.rowHeight = 150;
    
    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CustomCell" forIndexPath:indexPath];
    
    NSDictionary *dicTemp = [itemList objectAtIndex:indexPath.row];
    cell.backgroundColor = [UIColor clearColor];
    
    cell.nameLabel.text = [dicTemp objectForKey:@"name"];
    cell.amountLabel.text = [dicTemp objectForKey:@"amount"];
    cell.valueLabel.text = [dicTemp objectForKey:@"value"];
    cell.imgView.image = [UIImage imageNamed:[dicTemp objectForKey:@"image"]];
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier]isEqualToString:@"ShowDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        [[segue destinationViewController]setDetailData:[itemList objectAtIndex:indexPath.row]];
    }
}

@end
