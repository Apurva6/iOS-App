//
//  tViewController.h
//  GridLayout
//
//  Created by Apurva Thomas on 3/4/14.
//  Copyright (c) 2014 Apurva Thomas. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomizationScreen1.h"
#import "ObtainChoices.h"
#import "LabelforBeverageName.h"
#import "Data.h"
@interface tViewController : UICollectionViewController
@property(weak,nonatomic)IBOutlet UINavigationItem *ni;
@property(weak,nonatomic)IBOutlet UIButton *nextButton;
-(IBAction)nextButtonPressed;

@end
