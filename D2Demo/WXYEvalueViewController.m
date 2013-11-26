//
//  WXYEvalueViewController.m
//  D2Demo
//
//  Created by wxy325 on 11/26/13.
//  Copyright (c) 2013 Tongji Univ. All rights reserved.
//

#import "WXYEvalueViewController.h"
#import "WXYNearCarViewController.h"
#import "WXYSlider.h"

@interface WXYEvalueViewController ()

@property (strong, nonatomic) WXYSlider* slider;

@end

@implementation WXYEvalueViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.slider = [WXYSlider slider];
    self.slider.vc = self;
    [self.sliderContainer addSubview:self.slider];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
