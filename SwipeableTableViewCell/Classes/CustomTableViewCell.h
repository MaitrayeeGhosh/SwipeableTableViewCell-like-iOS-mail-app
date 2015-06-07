//
//  CustomTableViewCell.h
//  SwipeableTableViewCell
//
//  Created by Maitrayee Ghosh on 12/05/15.
//  Copyright (c) 2015 Maitrayee Ghosh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UIView *SwipableUIView;
@property (weak, nonatomic) IBOutlet UIButton *cellButton1;
@property (weak, nonatomic) IBOutlet UIButton *cellButton2;

@end
