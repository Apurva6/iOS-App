//
//  tViewController.m
//  GridLayout
//
//  Created by Apurva Thomas on 3/4/14.
//  Copyright (c) 2014 Apurva Thomas. All rights reserved.
//

#import "tViewController.h"
#import "LabelforBeverageName.h"
@interface tViewController (){
    NSArray *beverageImages;
    NSArray *beverageType;
    NSMutableArray *selection;
    NSString *selectedImage;
}

@end

@implementation tViewController
@synthesize ni,nextButton;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    //obtaining the data required to be placed in the cells
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.clearsSelectionOnViewWillAppear=NO;
    Data *dataInstance=[[Data alloc]init];
    beverageImages=[dataInstance getImageList];
    beverageType=[dataInstance getAllbeveragesList];
    selection=[[NSMutableArray alloc]init];
   }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return beverageImages.count;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
  
    //putting the required data in the cells
    
    
    static NSString *cellID = @"Cell";
    LabelforBeverageName *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellID forIndexPath:indexPath];
    
    cell.labelForBeverageName.text=[NSString stringWithFormat:@"%@",[beverageType objectAtIndex:indexPath.row]];
    cell.beverageImageView.image=[UIImage imageNamed:[beverageImages objectAtIndex:indexPath.row]];
   cell.selectedBackgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"red.png"]];
    return cell;
    
    
    }



- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    
        // Determine the selected items by using the indexPath
        NSInteger index=indexPath.row;
       // NSString *selectedImage = [beverageImages[indexPath.section] objectAtIndex:indexPath.row];
       selectedImage = [beverageType objectAtIndex:index];
        // Add the selected item into the array
    NSLog(@"index...%@",selectedImage);
    
       [selection addObject:selectedImage];
    [ni setTitle:selectedImage];
}

-(IBAction)nextButtonPressed;
{
   // NSString *selectedImage=@"name";
   
    if (selectedImage==nil) {
        //Make sure that the beverage is selected
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"oh!" message:@"Please select beverage name" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alert show];
                }
                              else
                              {
                                  UIStoryboard *storyboard=self.storyboard;
                                  CustomizationScreen1 *cs=[storyboard instantiateViewControllerWithIdentifier:@"CS1"];
                                  [cs obtainDataFromScreen1:selectedImage];
                                  
                                  
                                  NSLog(@"complete order....%@",selectedImage);
                                  [self.navigationController pushViewController:cs animated:YES];
                              }
}

@end
