//
//  QRCodeGenerator.h
//  GridLayout
//
//  Created by Apurva Thomas on 3/15/14.
//  Copyright (c) 2014 Apurva Thomas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (QRCodeGenerator)

+ (UIImage*)QRCodeGenerator:(NSString*)iData
             andLightColour:(UIColor*)iLightColour
              andDarkColour:(UIColor*)iDarkColour
               andQuietZone:(NSInteger)iQuietZone
                    andSize:(NSInteger)iSize;

@end
