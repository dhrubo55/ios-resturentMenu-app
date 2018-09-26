//
//  ViewController.h
//  passing_data_test
//
//  Created by mac-lab on 9/26/18.
//  Copyright © 2018 dhrubo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>
@property (strong, nonatomic) IBOutlet UITableView *tableView;


@end

