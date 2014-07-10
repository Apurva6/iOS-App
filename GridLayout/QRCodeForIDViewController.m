//
//  QRCodeForIDViewController.m
//  GridLayout
//
//  Created by Apurva Thomas on 3/15/14.
//  Copyright (c) 2014 Apurva Thomas. All rights reserved.
//

#import "QRCodeForIDViewController.h"
#import "QRCodeGenerator.h"
#import "ObtainChoices.h"
@interface QRCodeForIDViewController ()
{
    NSString  *finalOrder;
}
@end
//Not used in the code

//Used this class as Tester class for the QRCode library
@implementation QRCodeForIDViewController
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
	// Do any additional setup after loading the view.
    [self.view setBackgroundColor:[UIColor grayColor]];
    
    imgView = [[UIImageView alloc] initWithFrame:CGRectMake(10,80,300,300)];
    
    imgView.image = [UIImage QRCodeGenerator:@"444df fgf"
                              andLightColour:[UIColor whiteColor]
                               andDarkColour:[UIColor blackColor]
                                andQuietZone:1
                                     andSize:300];
    
    
    [self.view addSubview:imgView];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
