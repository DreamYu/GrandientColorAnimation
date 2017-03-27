//
//  UIColor+Addtion.m
//  RWGradientAnimation
//
//  Created by Roy on 2017/3/23.
//  Copyright © 2017年 Roy. All rights reserved.
//

#import "UIColor+Addtion.h"

@implementation UIColor (Addtion)

+ (UIColor *)rw_Hex:(NSString*)hexString {
    return [self rw_Hex:hexString alpha:1.0];
}

+ (UIColor *)rw_Hex:(NSString*)hexString alpha:(CGFloat)alpha {
    if (alpha > 1.0) {
        alpha = 1.0;
    }
    if (alpha < 0) {
        alpha = 0;
    }
    
    NSString *cString = [[hexString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    // strip 0X if it appears
    if ([cString hasPrefix:@"0X"]) {
        cString = [cString substringFromIndex:2];
    }
    if ([cString hasPrefix:@"#"]) {
        cString = [cString substringFromIndex:1];
    }
    
    NSString *rString;
    NSString *gString;
    NSString *bString;
    NSRange range;
    range.length = 2;
    
    if ([cString length] == 6) {  //no alpha
        range.location = 0;
        rString = [cString substringWithRange:range];
        
        range.location = 2;
        gString = [cString substringWithRange:range];
        
        range.location = 4;
        bString = [cString substringWithRange:range];
    }
    else {
        return [UIColor clearColor];
    }
    
    // Scan values
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float) r / 255.0f) green:((float) g / 255.0f) blue:((float) b / 255.0f) alpha:alpha];
}

@end
