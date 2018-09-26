//
//  resturentCustomCell.m
//  passing_data_test
//
//  Created by mac-lab on 9/26/18.
//  Copyright © 2018 dhrubo. All rights reserved.
//

#import "resturentCustomCell.h"

@implementation resturentCustomCell
@synthesize nameLabel = _nameLabel;
@synthesize descriptionLabel = _descriptionLabel;
@synthesize imageView = _imageView;

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
