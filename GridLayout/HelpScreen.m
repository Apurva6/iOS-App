//
//  HelpScreen.m
//  GridLayout
//
//  Created by Apurva Thomas on 3/17/14.
//  Copyright (c) 2014 Apurva Thomas. All rights reserved.
//

#import "HelpScreen.h"

@interface HelpScreen ()
{
    NSMutableArray *helpArray;
}
@end
//display for help
@implementation HelpScreen
@synthesize helpLabel;
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
    NSBundle *mainBundle = [NSBundle mainBundle];
    NSString *filename = [mainBundle pathForResource:@"Help"
                                              ofType:@"plist"];
    helpArray=[[NSMutableArray alloc]initWithContentsOfFile:filename];
     helpLabel.text=[helpLabel.text stringByAppendingString:@"\n"];
    for (int i=0; i<[helpArray count]; i++) {
        helpLabel.text=[helpLabel.text stringByAppendingString:[NSString stringWithFormat:@"%@",[helpArray objectAtIndex:i]]];
        helpLabel.text=[helpLabel.text stringByAppendingString:@"\n"];
        
    }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
