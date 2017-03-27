//
//  RWGrandientView.m
//  RWGradientAnimation
//
//  Created by Roy on 2017/3/23.
//  Copyright © 2017年 Roy. All rights reserved.
//

#import "RWGrandientView.h"
#import "UIColor+Addtion.h"

#define APP_BOUNDS [UIScreen mainScreen].bounds

@interface RWGrandientView ()

@property (nonatomic, strong) CAGradientLayer *gradient;
@property (nonatomic, strong) CAKeyframeAnimation *keyColorAni;

@end


@implementation RWGrandientView


- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self creatGradient];
        [self creatColorAni];
    }
    return self;
}
- (void)creatGradient {
    self.gradient = [CAGradientLayer layer];
    self.gradient.frame = APP_BOUNDS;
    self.gradient.startPoint = CGPointMake(1.0f, 0.0f);
    self.gradient.endPoint = CGPointMake(0.0f, 1.0f);
    self.gradient.locations = @[@0, @1];
    self.gradient.colors = @[(id)[UIColor rw_Hex:@"#00197C"].CGColor, (id)[UIColor rw_Hex:@"#00CFD1"].CGColor];
    [self.layer addSublayer:self.gradient];
}
- (void)creatColorAni {
    self.keyColorAni = [CAKeyframeAnimation animationWithKeyPath:@"colors"];
    self.keyColorAni.values = @[@[(id)[UIColor rw_Hex:@"#923562"].CGColor, (id)[UIColor rw_Hex:@"#db4dd1"].CGColor],
                                @[(id)[UIColor rw_Hex:@"#943e8d"].CGColor, (id)[UIColor rw_Hex:@"#a53fe0"].CGColor],
                                @[(id)[UIColor rw_Hex:@"#712d8d"].CGColor, (id)[UIColor rw_Hex:@"#6a3ee2"].CGColor],
                                @[(id)[UIColor rw_Hex:@"#3b2c7f"].CGColor, (id)[UIColor rw_Hex:@"#3895d1"].CGColor],
                                @[(id)[UIColor rw_Hex:@"#28387b"].CGColor, (id)[UIColor rw_Hex:@"#1ecdce"].CGColor],
                                @[(id)[UIColor rw_Hex:@"#923562"].CGColor, (id)[UIColor rw_Hex:@"#db4dd1"].CGColor],
                                ];
    self.keyColorAni.duration = 5;
    self.keyColorAni.repeatCount = MAXFLOAT;
    self.keyColorAni.removedOnCompletion = NO;
    self.keyColorAni.fillMode = kCAFillModeForwards;
    [self.gradient addAnimation:self.keyColorAni forKey:@"colors"];
}

@end
