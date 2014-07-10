//
//  CustomizationScreen2.m
//  GridLayout
//
//  Created by Apurva Thomas on 3/6/14.
//  Copyright (c) 2014 Apurva Thomas. All rights reserved.
//

#import "CustomizationScreen2.h"
#import "LabelCell.h"
#import "QRCodeForIDViewController.h"
@interface CustomizationScreen2 ()
{
    NSArray *syrups;
    NSArray *sugarFreeSyrups;
    NSMutableArray *expresso;
    NSArray *expressoShots;
    NSArray *allChoices;
    NSArray *allChoices1;
    NSString *namefromView1;
    NSString *sizefromView2;
    NSString *milkfromView2;
    NSString *selectedsyrups;
    NSString *selectedsugarFreeSyrups;
    NSString *selectedexpresso;
    NSString *selectedexpressoShots;
}

@end

@implementation CustomizationScreen2
@synthesize cView,next2;
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
    
    Data *dataForInstance=[[Data alloc]init];
    syrups=[dataForInstance getSyrups];
    sugarFreeSyrups=[dataForInstance getSugarFreeSyrups];
    expresso=[dataForInstance getExpresso];
    expressoShots=[dataForInstance getExpressoShots];
    allChoices=[NSArray arrayWithObjects:syrups,sugarFreeSyrups,expresso,expressoShots,nil];
    allChoices1=[NSArray arrayWithObjects:@"Syrups",@"Sugar Free Syrups",@"Expresso",@"Expresso Shot",nil];
    //selection=[[NSMutableArray alloc]init];
    UICollectionViewFlowLayout *collectionViewLayout = (UICollectionViewFlowLayout*)self.collectionView.collectionViewLayout;
    collectionViewLayout.sectionInset = UIEdgeInsetsMake(20, 0, 20, 0);
     next2 = [[UIBarButtonItem alloc]initWithTitle:@"Next" style:UIBarButtonItemStylePlain target:self action:@selector(nextButtonPressed)];
    [[self navigationItem] setRightBarButtonItem:next2];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [[allChoices objectAtIndex:section] count];
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    //putting the required data in the cells
    
    LabelCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    NSLog(@"string....%@",[[allChoices objectAtIndex:1]objectAtIndex:1]);
    cell.AddInsLabel.text=[NSString stringWithFormat:@"%@",[[allChoices objectAtIndex:1]objectAtIndex:1]];
    cell.AddInsLabel.text=[NSString stringWithFormat:@"%@",[allChoices[indexPath.section] objectAtIndex:indexPath.row]];
    cell.selectedBackgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"red.png"]];
    
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    //obtaining the choices
    
    
    // Determine the selected items by using the indexPath
    NSInteger index=indexPath.row;
    NSString *selectedImage = [allChoices[indexPath.section] objectAtIndex:index];
    switch (indexPath.section) {
        case 0:
            selectedsyrups=selectedImage;
            break;
         case 1:
            selectedsugarFreeSyrups=selectedImage;
            break;
        case 2:
            selectedexpresso=selectedImage;
            break;
        case 3:
            selectedexpressoShots=selectedImage;
            break;
        default:
            break;
    }
    // Add the selected item into the array
    NSLog(@"selection...%@",selectedImage);
    NSLog(@"syrup %@",selectedsyrups);
    NSLog(@"sugar free %@", selectedsugarFreeSyrups);
    NSLog(@"ex %@", selectedexpresso);
    NSLog(@"ex shot %@" ,selectedexpressoShots);
   // [selection addObject:selectedImage];
    //  [ni setTitle:selectedImage];
}
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    
    return [allChoices count];
}
- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    //Placing the image for section header and its title
    
    if (kind == UICollectionElementKindSectionHeader) {
        
        UICollectionReusableView *reusableview = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"HeaderView3" forIndexPath:indexPath];
        
        if (reusableview==nil) {
            reusableview=[[UICollectionReusableView alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
        }
        
        UILabel *label=[[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
        
       // label.text=[NSString stringWithFormat:@"Recipe Group #%i", indexPath.section + 1];
        label.text=[NSString stringWithFormat:@"%@", allChoices1[indexPath.section]];
        [reusableview addSubview:label];
        return reusableview;
    }
    return nil;
}
-(IBAction)nextButtonPressed
{
    //pushing the next view controller and passing on the data
    
    UIStoryboard *storyboard=self.storyboard;
    OrderViewController *ov=[storyboard instantiateViewControllerWithIdentifier:@"CS3"];
    
    [ov obtainDataFromScreen1:namefromView1 andSize:sizefromView2 andMilkType:milkfromView2 andSyrups:selectedsyrups andSugarFreeSyrups:selectedsugarFreeSyrups andExpresso:selectedexpresso andExpressoShot:selectedexpressoShots];
    [self.navigationController pushViewController:ov animated:YES];
}

//Obtaining data from previous view controller
-(void)obtainDataFromScreen1:(NSString *)name
                     andSize:(NSString *)size
                 andMilkType:(NSString *)milkType;
{
    namefromView1=name;
    milkfromView2=milkType;
    sizefromView2=size;
}

@end


