//
//  ConstellationViewController.m
//  Practice
//
//  Created by jiweon.lee on 2023/03/14.
//

#import "ConstellationViewController.h"
#import "ConstellationDetailViewController.h"

@interface ConstellationViewController () {
    NSInteger buttonTag;
}

@end

@implementation ConstellationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    buttonTag = 0;
}

- (IBAction)animalActionButton:(id)sender {
    buttonTag = [sender tag];
    
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ConstellationDetailViewController *vc = [sb instantiateViewControllerWithIdentifier:@"ConstellationDetailViewController"];
    
    NSLog(@"button Tag : %ld", buttonTag);
    
    switch (buttonTag) {
    case 1:
            [vc setImageName:@"dogstar.png"];
            break;
    case 2:
            [vc setImageName:@"horsestar.png"];
            break;
    case 3:
            [vc setImageName:@"bearstar.png"];
            break;
    case 4:
            [vc setImageName:@"eaglestar.png"];
            break;
    case 5:
            [vc setImageName:@"rabbitstar.png"];
            break;
    default:
            NSLog(@"default");
    }
    
    [self.navigationController pushViewController:vc animated:true];
//    [self presentViewController:vc animated:TRUE completion:nil];
}

@end
