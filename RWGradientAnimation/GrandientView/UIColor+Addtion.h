//
//  UIColor+Addtion.h
//  RWGradientAnimation
//
//  Created by Roy on 2017/3/23.
//  Copyright © 2017年 Roy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Addtion)

+ (UIColor *)rw_Hex:(NSString*)hexString;
+ (UIColor *)rw_Hex:(NSString*)hexString alpha:(CGFloat)alpha;

@end
