//
//  WXYNearCarViewController.m
//  D2Demo
//
//  Created by wxy325 on 11/25/13.
//  Copyright (c) 2013 Tongji Univ. All rights reserved.
//

#import "WXYNearCarViewController.h"
#import "WXYMyCarView.h"
#import "WXYOtherCarView.h"



@interface WXYNearCarViewController ()

@property (strong, nonatomic) WXYMyCarView* myCar;

- (void)startMyCar;

@end

@implementation WXYNearCarViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

#pragma mark - Life Cycle
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.myCar = [[WXYMyCarView alloc] init];
    [self.view addSubview:self.myCar];
//    [self startMyCar];
    self.myCar.center = CGPointMake(403, 555);
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self startMyCar];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Animation
- (void)startMyCar
{

    [UIView animateKeyframesWithDuration:5.f delay:0.f options:UIViewKeyframeAnimationOptionRepeat animations:^{
        [UIView addKeyframeWithRelativeStartTime:0.f relativeDuration:0.02f animations:^{
            self.myCar.degree = 45.f;
        }];
       [UIView addKeyframeWithRelativeStartTime:0.02f relativeDuration:0.13f animations:^{
           self.myCar.center = CGPointMake(510, 480);
       }];
        [UIView addKeyframeWithRelativeStartTime:0.15f relativeDuration:0.02f animations:^{
            self.myCar.degree = 120.f;
        }];
        [UIView addKeyframeWithRelativeStartTime:0.17f relativeDuration:0.13f animations:^{
            self.myCar.center = CGPointMake(606, 514);
        }];
        [UIView addKeyframeWithRelativeStartTime:0.3f relativeDuration:0.02f animations:^{
            self.myCar.degree = 180.f;
        }];
        [UIView addKeyframeWithRelativeStartTime:0.32f relativeDuration:0.28f animations:^{
            self.myCar.center = CGPointMake(602, 806);
        }];
        [UIView addKeyframeWithRelativeStartTime:0.6f relativeDuration:0.02f animations:^{
            self.myCar.degree = 315.f;
        }];
        [UIView addKeyframeWithRelativeStartTime:0.62f relativeDuration:0.23f animations:^{
            self.myCar.center = CGPointMake(438, 660);
        }];
        [UIView addKeyframeWithRelativeStartTime:0.85f relativeDuration:0.02f animations:^{
            self.myCar.degree = 345.f;
        }];
        [UIView addKeyframeWithRelativeStartTime:0.87f relativeDuration:0.13f animations:^{
            self.myCar.center = CGPointMake(403, 555);
        }];
        
    } completion:^(BOOL finished) {
        
    }];
}
@end
