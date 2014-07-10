//
//  ObtainChoices.h
//  GridLayout
//
//  Created by Apurva Thomas on 3/8/14.
//  Copyright (c) 2014 Apurva Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ObtainChoices : NSObject
{
    NSString *beverageName;
    NSString *milkType;
    NSString *size;
    NSString *syrups;
    NSString *sugarFreeSyrups;
    NSString *expresso;
    NSString *expressoShots;
    NSMutableArray *completeChoice;
}

-(id)init;

-(NSString*)getbeverageName;
-(NSString*)getmilkType;
-(NSString*)getsize;
-(NSString*)getsyrups;
-(NSString*)getsugarFreeSyrups;
-(NSString*)getexpresso;
-(NSString*)getexpressoShots;

-(void)setbeverageName:(NSString*)beverageName1;
-(void)setmilkType:(NSString*)milkType1;
-(void)setsize:(NSString*)size1;
-(void)setsyrups:(NSString*)syrups1;
-(void)setsugarFreeSyrups:(NSString*)sugarFreeSyrups1;
-(void)setexpresso:(NSString*)expresso1;
-(void)setexpressoShots:(NSString*)expressoShots1;

-(NSString*)getFinalCustomOrder:(NSString *)name
                        andSize:(NSString *)size
                    andMilkType:(NSString *)milkType
                      andSyrups:(NSString *)syrup
             andSugarFreeSyrups:(NSString *)sugarfreesyrups
                    andExpresso:(NSString *)expresso
                andExpressoShot:(NSString *)expressoShot;
@end
extern ObtainChoices *choiceInstanceExternal;