//
//  JSONParsingViewController.h
//  Practice
//
//  Created by jiweon.lee on 2023/03/15.
//

#import <UIKit/UIKit.h>

@interface JSONParsingViewController : UIViewController<UITableViewDelegate, UITableViewDataSource> {
    NSDictionary *dataList;
    NSArray *local;
}

@end
