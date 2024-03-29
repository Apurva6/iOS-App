//
//  QRCodeGenerator.m
//  GridLayout
//
//  Created by Apurva Thomas on 3/15/14.
//  Copyright (c) 2014 Apurva Thomas. All rights reserved.
//

#import "QRCodeGenerator.h"
#import "qrencode.h"

//used library for QRCode generation
@implementation UIImage (QRCodeGenerator)
+ (UIImage*)QRCodeGenerator:(NSString*)iData
             andLightColour:(UIColor*)iLightColour
              andDarkColour:(UIColor*)iDarkColour
               andQuietZone:(NSInteger)iQuietZone
                    andSize:(NSInteger)iSize
{
    //generating the QRCode with the help of QRCode library
    UIImage *ret = nil;
    QRcode  *qr  = QRcode_encodeString([iData UTF8String],0,QR_ECLEVEL_L,QR_MODE_8,1);
    
    int logQRSize = qr->width;
    int phyQRSize = logQRSize + (2 * iQuietZone);
    int scale     = iSize / phyQRSize;
    int imgSize   = phyQRSize * scale;
    
    // force image to be larger than requested, as requested size is too small!
    if ( scale < 1 )
        scale = 1;
    
    // generate the image
    {
        UIGraphicsBeginImageContext(CGSizeMake(imgSize,imgSize));
        
        CGContextRef ctx = UIGraphicsGetCurrentContext();
        
        // init all pixels to 'light' colour
        CGRect bounds = CGRectMake(0,0,imgSize,imgSize);
        CGContextSetFillColorWithColor(ctx,iLightColour.CGColor);
        CGContextFillRect(ctx,bounds);
        
        // set any 'dark' colour pixels
        {
            int x,y;
            
            CGContextSetFillColorWithColor(ctx,iDarkColour.CGColor);
            
            for ( y=0 ; y<logQRSize ; y++ )
                for ( x=0 ; x<logQRSize ; x++ )
                    if ( qr->data[(y*logQRSize)+x] & 1 )
                        CGContextFillRect(ctx,CGRectMake((iQuietZone+x)*scale,(iQuietZone+y)*scale,scale,scale));
        }
        
        // generate the UIImage
        CGImageRef imgRef = CGBitmapContextCreateImage(ctx);
        ret = [UIImage imageWithCGImage:imgRef];
        CGImageRelease(imgRef);
        
        UIGraphicsEndImageContext();
    }
    
    QRcode_free(qr);
    
    return ret;
}

@end
