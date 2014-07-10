//
//  CustomizationScreen1.h
//  GridLayout
//
//  Created by Apurva Thomas on 3/5/14.
//  Copyright (c) 2014 Apurva Thomas. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Data.h"
#import "CustomizationScreen2.h"
#import "CellForSizeandMilkType.h"
@interface CustomizationScreen1 : UICollectionViewController
{
    int count;
    NSArray *input;
}
@property (retain, nonatomic) IBOutlet UIBarButtonItem *next1;
-(IBAction)nextButtonPressed;
-(void)obtainDataFromScreen1:(NSString *)name;
@end
