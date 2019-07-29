//
//  ViewController.m
//  PDShadowView
//
//  Created by liang on 2019/7/29.
//  Copyright © 2019 liang. All rights reserved.
//

#import "ViewController.h"
#import "PDShadowView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 50, 100)];
    view.backgroundColor = [[UIColor blueColor] colorWithAlphaComponent:0.9f];
    view.layer.cornerRadius = 10.f;
    [self.view addSubview:view];
    
    PDShadowView *shadowView = [[PDShadowView alloc] initWithFrame:CGRectMake(100, 100, 50, 100)];
    shadowView.cornerRadius = 10.f;
    shadowView.shadowOffset = CGSizeMake(10, 10);
    shadowView.shadowColor = [UIColor blackColor];
    shadowView.shadowOpacity = 0.2f;
    shadowView.shadowRadius = 5.f;
    [self.view insertSubview:shadowView belowSubview:view];
}


@end
