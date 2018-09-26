//
//  detailsViewController.h
//  passing_data_test
//
//  Created by mac-lab on 9/26/18.
//  Copyright © 2018 dhrubo. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface detailsViewController : UIViewController
@property NSString *details;
@property NSString *imageName;
@property (weak, nonatomic) IBOutlet UILabel *customLabel;
@property (strong, nonatomic) IBOutlet UIImageView *customImageView;

@end

