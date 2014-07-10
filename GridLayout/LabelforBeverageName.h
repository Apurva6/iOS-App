//
//  LabelforBeverageName.h
//  GridLayout
//
//  Created by Apurva Thomas on 3/8/14.
//  Copyright (c) 2014 Apurva Thomas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LabelforBeverageName : UICollectionViewCell

//getting reference for the section header of the cell
@property (weak, nonatomic) IBOutlet UILabel *labelForBeverageName;
@property (weak, nonatomic) IBOutlet UIImageView *beverageImageView;

@end
