//
//  ViewController.m
//  SwipeableTableViewCell
//
//  Created by Maitrayee Ghosh on 12/05/15.
//  Copyright (c) 2015 Maitrayee Ghosh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableView Delegate and DataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 15;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellid=@"CustomCell";
    CustomTableViewCell *cell=(CustomTableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellid];;
    
    
    if(cell==nil)
    {
        cell=[[CustomTableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellid];
        
    }
    cell.nameLabel.text=[NSString stringWithFormat:@"This is cell no %d of this table",indexPath.row+1];
    cell.cellButton1.tag=101+indexPath.row;
    cell.cellButton2.tag=201+indexPath.row;
    cell.SwipableUIView.tag=301+indexPath.row;
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    
    
    return cell;
}

#pragma mark - TableCell Button Action

- (IBAction)didTapCellButton1:(UIButton *)sender {
    NSString *str=[NSString stringWithFormat:@"Button 1 is pressed on cell no %d of this table.",sender.tag-100];
    UIAlertView *message=[[UIAlertView alloc]initWithTitle:nil message:str delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [message show];
}

- (IBAction)didTapCellButton2:(UIButton *)sender {
    NSString *str=[NSString stringWithFormat:@"Button 2 is pressed on cell no %d of this table.",sender.tag-200];
    UIAlertView *message=[[UIAlertView alloc]initWithTitle:nil message:str delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [message show];
}
@end
