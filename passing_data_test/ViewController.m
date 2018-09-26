//
//  ViewController.m
//  passing_data_test
//
//  Created by mac-lab on 9/26/18.
//  Copyright © 2018 dhrubo. All rights reserved.
//

#import "ViewController.h"
#import "resturentCustomCell.h"
#import "detailsViewController.h"

@interface ViewController (){
    NSArray *foodName;
    NSArray *foodDescription;
    NSArray *foodImages;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    foodName = [NSArray arrayWithObjects: @"shrimp fried rice",@"yakisoba",@"Fried Udon",@"yakitori",@"kaiseki",nil];
    foodDescription = [NSArray arrayWithObjects:@"fried rice with stir fried shrimp",@"stir friend noodles with meat and vegetables",@"Delicious Japanese yaki udon noodle dish with cabbage and meat",@"yakitori (Japanese: 焼き鳥) is a Japanese type of skewered chicken",@"Kaiseki (懐石) or kaiseki-ryōri (懐石料理) is a traditional multi-course Japanese dinner",nil];
    
    foodImages = [NSArray arrayWithObjects:@"shrimp.jpg",@"yakisoba",@"yakiudon.jpg",@"yakitori.jpg",@"kaiseki.jpg",nil];
}



- (UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    static NSString *simpleTableIdentifier = @"SimpleTableCell";
    
    resturentCustomCell *cell = (resturentCustomCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"resturentCustomCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    cell.nameLabel.text = [foodName objectAtIndex:indexPath.row];
    cell.descriptionLabel.text = [foodDescription objectAtIndex:indexPath.row];
    cell.imageView.image = [UIImage imageNamed:[foodImages objectAtIndex:indexPath.row]];
    cell.accessoryType =UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [foodName count];
}
-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UIStoryboard *uistory = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    detailsViewController *detailsView = [uistory instantiateViewControllerWithIdentifier:@"customID"];
    
    detailsView.details = foodDescription[indexPath.row];
    detailsView.imageName = foodImages[indexPath.row];
    
    [[self navigationController] pushViewController:detailsView animated:true];
    
}

@end
