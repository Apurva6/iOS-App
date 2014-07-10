//
//  OrderViewController.m
//  GridLayout
//
//  Created by Apurva Thomas on 3/7/14.
//  Copyright (c) 2014 Apurva Thomas. All rights reserved.
//

#import "OrderViewController.h"
#import "ObtainChoices.h"
#import "QRCodeGenerator.h"
@interface OrderViewController ()

@end

@implementation OrderViewController

{
    NSString *name1;
    NSString *size1;
    NSString *milk1;
    NSString *syrup1;
    NSString *sugarfreesyrup1;
    NSString *expresso1;
    NSString *expressoShot1;
    NSString *final1;
}
@synthesize orderString,orderDisplay,orderId;
@synthesize orderFinal,order,obtainChoicesObject;
@synthesize imgView;

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
	//calls the QRCode genrator method for the order
    
    ObtainChoices *choices=[[ObtainChoices alloc]init];
    final1=[choices getFinalCustomOrder:name1 andSize:size1 andMilkType:milk1 andSyrups:syrup1 andSugarFreeSyrups:sugarfreesyrup1 andExpresso:expresso1 andExpressoShot:expressoShot1];
    imgView = [[UIImageView alloc] initWithFrame:CGRectMake(10,80,300,300)];
    
    imgView.image = [UIImage QRCodeGenerator:final1
                              andLightColour:[UIColor whiteColor]
                               andDarkColour:[UIColor blackColor]
                                andQuietZone:1
                                     andSize:300];
    
    
    [self.view addSubview:imgView];

    [self placeOrderHistoryInPlist:final1];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) placeOrderHistoryInPlist:(NSString *)Order;
{
    //writing into the file the order names
    NSBundle *mainBundle = [NSBundle mainBundle];
    NSString *filename = [mainBundle pathForResource:@"CustomizationHistory"
                                              ofType:@"plist"];
    orderArray=[[NSMutableArray alloc]initWithContentsOfFile:filename];
    [orderArray addObject:final1];
    [orderArray writeToFile:filename atomically:YES];
    NSLog(@"in order %@",[orderArray objectAtIndex:0]);
    
    [self setOrderId];
    
}

-(void) setOrderId
{
    
    //putting the order number in label and the order name
    NSBundle *mainBundle = [NSBundle mainBundle];
    NSString *filename = [mainBundle pathForResource:@"CustomizationHistory"
                                              ofType:@"plist"];
    NSMutableArray *orderHistoryArray=[[NSMutableArray alloc]initWithContentsOfFile:filename];
    NSInteger i=[orderHistoryArray count];
    NSString *Str = [NSString stringWithFormat: @"Order No: %d", (int)i-1];
    orderId.text=Str;
        NSLog(@"%@",[orderHistoryArray objectAtIndex:i-1]);
    NSString *str1=[NSString stringWithFormat:@"%@",[orderHistoryArray objectAtIndex:i-1]];
    orderDisplay.text=str1;
}

-(void)obtainDataFromScreen1:(NSString *)name
                     andSize:(NSString *)size
                 andMilkType:(NSString *)milkType
                   andSyrups:(NSString *)syrup
          andSugarFreeSyrups:(NSString *)sugarfreesyrups
                 andExpresso:(NSString *)expresso
             andExpressoShot:(NSString *)expressoShot
{
   //obtaining all the choices in the local variables
    
    name1=name;
    size1=size;
    milk1=milkType;
    syrup1=syrup;
    sugarfreesyrup1=sugarfreesyrups;
    expresso1=expresso;
    expressoShot1=expressoShot;
    
}

@end
