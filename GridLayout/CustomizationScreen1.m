//
//  CustomizationScreen1.m
//  GridLayout
//
//  Created by Apurva Thomas on 3/5/14.
//  Copyright (c) 2014 Apurva Thomas. All rights reserved.
//

#import "CustomizationScreen1.h"
#import "HeaderForSection.h"
@interface CustomizationScreen1 ()
{
    NSArray *size;
    NSArray *sizeName;
    NSArray *milkType;
    NSArray *milkTypeName;
    NSArray *allChoices;
    NSArray *allChoicesNames;
    NSArray *allChoicesLabel;
    NSString *name1;
    NSString *selectedsize;
    NSString *selectedmilkType;
}



@end




@implementation CustomizationScreen1
@synthesize next1;
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
    [super viewDidLoad];
	//obtaining the data required to be placed in the cells
    
    
    Data *dataInstance=[[Data alloc]init];
    size=[dataInstance getCoffeeSize];
    sizeName=[dataInstance getCoffeeSize];
    milkType=[dataInstance getMilkType];
    milkTypeName=[dataInstance getMilkTypeName];
    allChoices=[NSArray arrayWithObjects:size,milkType,nil];
    allChoicesNames=[NSArray arrayWithObjects:sizeName,milkTypeName,nil];
    allChoicesLabel=[NSArray arrayWithObjects: @"Size", @"Milk",nil];
    selectedmilkType=[NSString stringWithFormat:@"%@",[milkTypeName objectAtIndex:0]];
    selectedsize=[NSString stringWithFormat:@"%@",[size objectAtIndex:0]];
   // selection=[[NSMutableArray alloc]init];
    UICollectionViewFlowLayout *collectionViewLayout = (UICollectionViewFlowLayout*)self.collectionView.collectionViewLayout;
    collectionViewLayout.sectionInset = UIEdgeInsetsMake(20, 0, 20, 0);
    next1 = [[UIBarButtonItem alloc]initWithTitle:@"Next" style:UIBarButtonItemStylePlain target:self action:@selector(nextButtonPressed)];

    [[self navigationItem] setRightBarButtonItem:next1];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [[allChoices objectAtIndex:section] count];
}



- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    //putting the required data in the cells
    
    static NSString *identifier = @"Cell";
    
    CellForSizeandMilkType *cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    cell.label.text=[NSString stringWithFormat:@"%@",[allChoicesNames[indexPath.section] objectAtIndex:indexPath.row]];
    cell.ImageView.image=[UIImage imageNamed:[allChoices[indexPath.section] objectAtIndex:indexPath.row]];
    
    cell.selectedBackgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"red.png"]];
    

    
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
   //obtaining the choices
    
    switch (indexPath.section) {
        case 0:
            selectedsize=[allChoicesNames[indexPath.section]objectAtIndex:indexPath.row];
            
                   // cell.selectedBackgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"red.png"]];
                       break;
        case 1:
            selectedmilkType=[allChoicesNames[indexPath.section]objectAtIndex:indexPath.row];
           // cell.selectedBackgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"red.png"]];
        default:
            break;
    }
    NSLog(@"selection...%@,%@",selectedsize,selectedmilkType);

}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    
    return [allChoices count];
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    //Placing the image for section header and its title
    
    
    if (kind == UICollectionElementKindSectionHeader) {
        
        UICollectionReusableView *reusableview = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"HeaderView" forIndexPath:indexPath];
        
        if (reusableview==nil) {
            reusableview=[[UICollectionReusableView alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
        }
        
        UILabel *label=[[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
         label.text=[NSString stringWithFormat:@"%@", allChoicesLabel[indexPath.section]];
        
        // label.text=[NSString stringWithFormat:@"Recipe Group #%i", indexPath.section + 1];
        [reusableview addSubview:label];
        return reusableview;
    }
    return nil;
}

-(IBAction)nextButtonPressed
{
    //pushing the next view controller and passing on the data
    UIStoryboard *storyboard=self.storyboard;
    CustomizationScreen2 *cs=[storyboard instantiateViewControllerWithIdentifier:@"CS2"];
    NSLog(@"name from screen1 on screen2 %@",name1);
    [cs obtainDataFromScreen1:name1 andSize:selectedsize andMilkType:selectedmilkType];
    [self.navigationController pushViewController:cs animated:YES];
}

-(void)obtainDataFromScreen1:(NSString *)name
{
    name1=name;

}


@end
