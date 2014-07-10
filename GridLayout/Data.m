//
//  Data.m
//  GridLayout
//
//  Created by Apurva Thomas on 3/5/14.
//  Copyright (c) 2014 Apurva Thomas. All rights reserved.
//

#import "Data.h"

@implementation Data

- (id)init
{
self = [super init];
if (self) {
    coffeeSize= [NSMutableArray arrayWithObjects: @"Tall", @"Grande", @"Venti", nil];
    milkType=[NSMutableArray arrayWithObjects: @"2percent.png",@"No Fat.png",@"Soy.png",@"HalfnHalf.png",nil];
   // milkType= [NSMutableArray arrayWithObjects: @"No Fat", @"2%", @"Half and Half", nil];
    milkTypeName=[NSMutableArray arrayWithObjects: @"2 percent",@"No Fat",@"Soy",@"Half n Half",nil];
    whippedCream= [NSMutableArray arrayWithObjects: @"Yes", @"No", nil];
    syrups= [NSMutableArray arrayWithObjects: @"Vanilla", @"Hazelnut",@"Caramel", @"Cinamon Dolce",@"Mocha Choclate", @"White Chocolate",@"Tofee Nut",@"Peppermint",@"Chai",nil];
    sugarFreeSyrups= [NSMutableArray arrayWithObjects: @"Vanilla(Sugar Free)", @"Caramel(Sugar Free)", @"Hazelnut(Sugar Free)", @"Cinamon Dolce(Sugar Free)", nil];
    expresso= [NSMutableArray arrayWithObjects: @"Decaf", @"Regular", @"HalfCaf", nil];
    expressoShots= [NSMutableArray arrayWithObjects: @"Solo", @"Double", @"Triple", @"Quad", nil];
    beverageType= [NSMutableArray arrayWithObjects: @"Cafe Latte", @"Cafe Mocha", @"Cafe Americano", @"Cappuccino",@"Caramel Flan Latte",@"Caramel Macchiato",@"CinnamonDolceLatte",@"Espresso",@"Espresso Con Panna",@"Flavoured Latte",@"Hazelnut Macchiato",@"Iced Cafe Mocha", @"Iced Caffe Americano",@"Iced Caffe Latte",  @"Iced Caramel Macchiato", @"Iced Cinnamon Dolce Latte",@"Iced Flavoured Latte",@"Iced Hazelnut Macchiato",@"Iced Vanilla Latte",@"Iced Vanilla Spice Latte",@"Iced White Chocolate Mocha",nil];
    beverageTypeImage=[NSMutableArray arrayWithObjects:@"CafeLatte.png", @"CafeMocha.png", @"CaffeAmericano.png",@"Cappuccino.png",@"CaramelFlanLatte.png",@"CaramelMacchiato.png", @"CinnamonDolceLatte.png",@"Espresso.png",@"EspressoConPanna.png",@"FlavouredLatte.png", @"HazelnutMacchiato.png",@"IcedCafeMocha.png", @"IcedCaffeAmericano.png",@"IcedCaffeLatte.png",  @"IcedCaramelMacchiato.png", @"IcedCinnamonDolceLatte.png",@"IcedFlavouredLatte.png", @"IcedHazelnutMacchiato.png",@"IcedVanillaLatte.png",@"IcedVanillaSpiceLatte.png", @"IcedWhiteChocolateMocha.png",nil];
    inputTypes= [NSMutableArray arrayWithObjects: @"coffeeSize", @"milkType", @"syrups",@"sugarFreeSyrups",@"expresso",@"expressoShots",@"beverageType",@"beverageTypeImage", nil];
    inputTypes1= [NSMutableArray arrayWithObjects: coffeeSize,milkType,syrups,sugarFreeSyrups,expresso,expressoShots,nil];
    
}
return self;
}

-(NSMutableArray*)getAllbeveragesList
{
    return beverageType;
}


-(int)numberOfBeverages
{
    return [beverageType count];
}


-(NSMutableArray*)getImageList
{
    return beverageTypeImage;
}

-(NSMutableArray*)getCoffeeSize
{
    return coffeeSize;
}
-(NSMutableArray *)getMilkType
{
    return milkType;
}
-(NSMutableArray *)getMilkTypeName;
{
    return milkTypeName;
}
-(NSMutableArray *)getSyrups
{
    return syrups;
}
-(NSMutableArray *)getSugarFreeSyrups
{
    return sugarFreeSyrups;
}
-(NSMutableArray *)getExpresso
{
    return expresso;
}
-(NSMutableArray*)getExpressoShots
{
    return expressoShots;
}
-(NSMutableArray*)getInputTypes
{
    return inputTypes;
}
-(NSMutableArray*)getInputTypes1
{
    return inputTypes1;
}

-(int)getCoffeeSizeCount
{
    return [coffeeSize count];
}

-(int)getMilkTypeCount
{
    return [milkType count];
}

-(int)getSyrupsCount
{
    return [syrups count];
}
-(int)getSugarFreeSyrupsCount
{
    return [sugarFreeSyrups count];
}
-(int)getExpressoCount
{
    return [expresso count];
    
}
-(int)getExpressoShotsCount
{
    return [expressoShots count];
}
-(int)getInputTypesCount
{
    return [inputTypes count];
}
-(int)getInputTypesCount1
{
    return [inputTypes1 count];
}

@end
