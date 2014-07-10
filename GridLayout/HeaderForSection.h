//
//  HeaderForSection.h
//  GridLayout
//
//  Created by Apurva Thomas on 3/5/14.
//  Copyright (c) 2014 Apurva Thomas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HeaderForSection : UICollectionReusableView
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UIImageView *headerImage;

@end
