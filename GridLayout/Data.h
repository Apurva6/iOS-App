//
//  Data.h
//  GridLayout
//
//  Created by Apurva Thomas on 3/5/14.
//  Copyright (c) 2014 Apurva Thomas. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Data : NSObject
{
    NSMutableArray *coffeeSize;
    NSMutableArray *milkType;
    NSMutableArray *milkTypeName;
    NSMutableArray *whippedCream;
    NSMutableArray *syrups;
    NSMutableArray *sugarFreeSyrups;
    NSMutableArray *beverageType;
    NSMutableArray *beverageTypeImage;
    NSMutableArray *expresso;
    NSMutableArray *expressoShots;
    NSMutableArray *inputTypes;
    NSMutableArray *inputTypes1;
    
}
- (int) numberOfBeverages;
-(NSMutableArray*)getAllbeveragesList;
-(NSMutableArray *)getImageList;
-(NSMutableArray *)getCoffeeSize;
-(NSMutableArray *)getMilkType;
-(NSMutableArray *)getMilkTypeName;
-(NSMutableArray *)getSyrups;
-(NSMutableArray *)getSugarFreeSyrups;
-(NSMutableArray *)getExpresso;
-(NSMutableArray *)getExpressoShots;
-(NSMutableArray *)getInputTypes;
-(NSMutableArray*)getInputTypes1;


-(int)getCoffeeSizeCount;
-(int)getMilkTypeCount;
-(int)getSyrupsCount;
-(int)getSugarFreeSyrupsCount;
-(int)getExpressoCount;
-(int)getExpressoShotsCount;
-(int)getInputTypesCount;
-(int)getInputTypesCount1;

@end
