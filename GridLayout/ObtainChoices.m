//
//  ObtainChoices.m
//  GridLayout
//
//  Created by Apurva Thomas on 3/8/14.
//  Copyright (c) 2014 Apurva Thomas. All rights reserved.
//

#import "ObtainChoices.h"

@implementation ObtainChoices

// This class obtains all the choices of the customer and generates the order in the standard format followed by the barista

ObtainChoices *thesharedInstance;
extern ObtainChoices *choiceInstanceExternal;
-(id)init
{
    //beverageName=@" ";
    milkType=[[NSString alloc]init];
    size=[[NSString alloc]init];
    //syrups;
    //sugarFreeSyrups;
    //expresso;
    //expressoShots;
    return self;
    
}

+ (ObtainChoices *) sharedInstance
{
    if (! thesharedInstance)
    {
        thesharedInstance = [[ObtainChoices alloc] init];
    }
    return thesharedInstance;
}

-(NSString*)getbeverageName
{
    return beverageName;
}
-(NSString*)getmilkType
{
    return milkType;
}
-(NSString*)getsize
{
    return size;
}
-(NSString*)getsyrups
{
    return syrups;
}
-(NSString*)getsugarFreeSyrups
{
    return sugarFreeSyrups;
}
-(NSString*)getexpresso
{
    return expresso;
}
-(NSString*)getexpressoShots
{
    return expressoShots;
}

-(void)setbeverageName:(NSString*)beverageName1
{
    beverageName=beverageName1;
    [completeChoice addObject:beverageName];
}
-(void)setmilkType:(NSString*)milkType1
{
    milkType=milkType1;
}
-(void)setsize:(NSString*)size1
{
    size=size1;
}
-(void)setsyrups:(NSString*)syrups1
{
    syrups=syrups1;
}
-(void)setsugarFreeSyrups:(NSString*)sugarFreeSyrups1{
    sugarFreeSyrups=sugarFreeSyrups1;
}
-(void)setexpresso:(NSString*)expresso1
{
    expresso=expresso1;
}
-(void)setexpressoShots:(NSString*)expressoShots1
{
    expressoShots=expressoShots1;
}
-(NSString*)getFinalCustomOrder:(NSString *)name
andSize:(NSString *)size1
andMilkType:(NSString *)milkType1
andSyrups:(NSString *)syrup
andSugarFreeSyrups:(NSString *)sugarfreesyrups
andExpresso:(NSString *)expresso1
andExpressoShot:(NSString *)expressoShot;
{
    
    //Placing the choices in the required format and if no choice selected then default selection taken
    
    NSString *final=@" ";
    NSString *space=@" ";
    if (size1==nil) {
        size1=@"Tall";
    }
    if (milkType1==nil) {
        milkType1=@"2 percent";
    }
    if (expresso1==nil) {
        expresso1=@"Decaf";
    }
    if (expressoShot==nil) {
        expressoShot=@"";
    }
    if (sugarfreesyrups==nil) {
        sugarfreesyrups=@"";
    }
    if (syrup==nil) {
        syrup=@"";
    }
    final=[final stringByAppendingString:size1];
    final=[final stringByAppendingString:space];
    final=[final stringByAppendingString:name];
    final=[final stringByAppendingString:space];
    final=[final stringByAppendingString:milkType1];
    final=[final stringByAppendingString:space];
    final=[final stringByAppendingString:expresso1];
    final=[final stringByAppendingString:space];
    final=[final stringByAppendingString:expressoShot];
   final=[final stringByAppendingString:sugarfreesyrups];
    final=[final stringByAppendingString:space];
    final=[final stringByAppendingString:syrup];
    NSLog(@"test...%@",final);
    return final;
}



@end

