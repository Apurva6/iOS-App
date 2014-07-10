//
//  OrderViewController.h
//  GridLayout
//
//  Created by Apurva Thomas on 3/7/14.
//  Copyright (c) 2014 Apurva Thomas. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ObtainChoices.h"
@interface OrderViewController : UIViewController
{
    NSMutableArray *orderArray;

    UIImageView *imgView;
}

@property (nonatomic,retain) UIImageView *imgView;


@property(strong,atomic)NSString *orderFinal;
@property(strong,atomic)NSString *orderString;
@property(strong,atomic)NSMutableArray *order;
//@property (strong,atomic) OrderMyCofffeeTableViewController *beverageObject;
@property(weak,nonatomic)IBOutlet UILabel* orderDisplay;
@property(weak,nonatomic)IBOutlet UILabel* orderId;
//@property(weak,nonatomic)IBOutlet UIImageView* barCodeImage;
-(void)setOrderString:(NSString *)orderString;
//-(void) setBarCodeImage:(UIImageView *)barCodeImage;
@property (strong,atomic) ObtainChoices *obtainChoicesObject;



-(void) placeOrderHistoryInPlist:(NSString *)Order;
-(void)setOrderId;
-(void)obtainDataFromScreen1:(NSString *)name
                     andSize:(NSString *)size
                 andMilkType:(NSString *)milkType
                   andSyrups:(NSString *)syrup
          andSugarFreeSyrups:(NSString *)sugarfreesyrups
                 andExpresso:(NSString *)expresso
             andExpressoShot:(NSString *)expressoShot;

@end
