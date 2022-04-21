//
//  ViewController.m
//  RWGradientAnimation
//
//  Created by Roy on 2017/3/23.
//  Copyright © 2017年 Roy. All rights reserved.
//

#import "ViewController.h"
#import "RWGrandientView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    /// test
    RWGrandientView *grandientView = [[RWGrandientView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:grandientView];

}




@end
