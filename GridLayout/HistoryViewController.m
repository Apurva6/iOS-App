//
//  HistoryViewController.m
//  GridLayout
//
//  Created by Apurva Thomas on 3/15/14.
//  Copyright (c) 2014 Apurva Thomas. All rights reserved.
//

#import "HistoryViewController.h"

@interface HistoryViewController ()
{
    NSMutableArray *orderHistoryArray;
}
@end

@implementation HistoryViewController
@synthesize tableView1;
- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
//loads the choices previoulsy made by the user and places it in an array
    tableView1.dataSource=self;
    tableView1.delegate=self;
    NSBundle *mainBundle = [NSBundle mainBundle];
    NSString *filename = [mainBundle pathForResource:@"CustomizationHistory"
                                              ofType:@"plist"];
   orderHistoryArray=[[NSMutableArray alloc]initWithContentsOfFile:filename];
   // [tableView1 reloadData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void) viewWillAppear:(BOOL)animated
{
    [tableView1 reloadData];
}




- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    return [orderHistoryArray count];
    //return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    //Places the previous choices in the cell
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView1 dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell
        if (! cell)
        {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
        }
    
    cell.textLabel.text = [NSString stringWithFormat:@"%@", [orderHistoryArray objectAtIndex:indexPath.row]];
    
    
        return cell;
    }


@end
