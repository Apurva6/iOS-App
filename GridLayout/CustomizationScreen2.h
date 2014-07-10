//
//  CustomizationScreen2.h
//  GridLayout
//
//  Created by Apurva Thomas on 3/6/14.
//  Copyright (c) 2014 Apurva Thomas. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OrderViewController.h"
#import "Data.h"
@interface CustomizationScreen2 : UICollectionViewController
@property(retain,nonatomic)UILabel *choices;
@property (nonatomic, weak) IBOutlet UICollectionView *cView;
@property (retain, nonatomic) IBOutlet UIBarButtonItem *next2;
-(IBAction)nextButtonPressed;
-(void)obtainDataFromScreen1:(NSString *)name
                     andSize:(NSString *)size
                 andMilkType:(NSString *)milkType;
@end
