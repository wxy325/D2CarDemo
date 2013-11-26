//
//  WXYNearCarViewController.m
//  D2Demo
//
//  Created by wxy325 on 11/25/13.
//  Copyright (c) 2013 Tongji Univ. All rights reserved.
//

#import "WXYNearCarViewController.h"

#import "WXYHelpViewController.h"
#import "WXYLoginViewController.h"
#import "WXYEvalueViewController.h"

@interface WXYNearCarViewController ()



@property (strong, nonatomic) UIStoryboard* storyBoard;

@property (assign, nonatomic) BOOL isCarSelected;

- (void)startMyCar;
- (void)startCarOne;

@end

@implementation WXYNearCarViewController
- (WXYEvalueViewController*)evalueVC
{
    if (!_evalueVC)
    {
        _evalueVC = [self.storyBoard instantiateViewControllerWithIdentifier:@"WXYEvalueViewController"];
        _evalueVC.vc = self;
    }
    return _evalueVC;
}
- (WXYLoginViewController*)loginVC
{
    if (!_loginVC)
    {
        _loginVC = [self.storyBoard instantiateViewControllerWithIdentifier:@"WXYLoginViewController"];
        _loginVC.vc = self;
    }
    return _loginVC;
}
- (WXYHelpViewController*)helpVC
{
    if (!_helpVC)
    {
        _helpVC = [self.storyBoard instantiateViewControllerWithIdentifier:@"WXYHelpViewController"];
        _helpVC.vc = self;
    }
    return _helpVC;
}
- (UIStoryboard*)storyBoard
{
    if (!_storyBoard)
    {
        _storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    }
    return _storyBoard;
}
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

    self.myCar = [[WXYMyCarView alloc] init];
    [self.view insertSubview:self.myCar aboveSubview:self.bgView];
    self.myCar.center = CGPointMake(403, 555);
    
    self.carOne = [[WXYOtherCarView alloc] init];
    self.carOne.center = CGPointMake(120, 987);
    [self.view insertSubview:self.carOne aboveSubview:self.bgView];

    self.car = [[WXYOtherCarView alloc] init];
    [self.view insertSubview:self.car aboveSubview:self.bgView];
    self.car.center = CGPointMake(731, 562);
    
    self.isCarSelected = NO;
    
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self startMyCar];
    [self startCarOne];
    [self startCar];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Animation
- (void)startCar
{
    //731 562
    //604 519
    //604 804
    //629 836
    //731 841

    
    [UIView animateKeyframesWithDuration:5.f delay:0.5f options:UIViewKeyframeAnimationOptionRepeat animations:^{
        [UIView addKeyframeWithRelativeStartTime:0.f relativeDuration:0.02f animations:^{
            self.car.degree = 290.f;
        }];
        [UIView addKeyframeWithRelativeStartTime:0.f relativeDuration:0.25f animations:^{
            self.car.center = CGPointMake(604, 519);
        }];

        /////
        [UIView addKeyframeWithRelativeStartTime:0.25f relativeDuration:0.02f animations:^{
            self.car.degree = 180.f;
        }];
        [UIView addKeyframeWithRelativeStartTime:0.25f relativeDuration:0.35f animations:^{
            self.car.center = CGPointMake(604, 804);
        }];
        

        /////
        [UIView addKeyframeWithRelativeStartTime:0.7f relativeDuration:0.02f animations:^{
            self.car.degree = 135.f;
        }];
        [UIView addKeyframeWithRelativeStartTime:0.7f relativeDuration:0.05f animations:^{
            self.car.center = CGPointMake(629, 836);
        }];
        
        /////
        [UIView addKeyframeWithRelativeStartTime:0.75f relativeDuration:0.02f animations:^{
            self.car.degree = 90.f;
        }];
        [UIView addKeyframeWithRelativeStartTime:0.75f relativeDuration:0.25f animations:^{
            self.car.center = CGPointMake(781, 841);
        }];
        
        
        
    } completion:^(BOOL finished) {
        self.car.center = CGPointMake(771, 582);
        self.car.degree = 290.f;
    }];
    
    
}
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

- (void)startCarOne
{
    //2.5
    [UIView animateKeyframesWithDuration:5.f delay:0.f options:UIViewKeyframeAnimationOptionRepeat animations:^{
        [UIView addKeyframeWithRelativeStartTime:0.f relativeDuration:0.02f animations:^{
            self.carOne.degree = 10.f;
        }];
        [UIView addKeyframeWithRelativeStartTime:0.f relativeDuration:0.25f animations:^{
            self.carOne.center = CGPointMake(127, 748);
        }];
        
        
        ///////2
        [UIView addKeyframeWithRelativeStartTime:0.25f relativeDuration:0.02f animations:^{
            self.carOne.degree = 60.f;
        }];
        [UIView addKeyframeWithRelativeStartTime:0.25f relativeDuration:0.2f animations:^{
            self.carOne.center = CGPointMake(252, 658);
        }];
        
        ///////2
        [UIView addKeyframeWithRelativeStartTime:0.45f relativeDuration:0.02f animations:^{
            self.carOne.degree = -30.f;
        }];
        [UIView addKeyframeWithRelativeStartTime:0.45f relativeDuration:0.2f animations:^{
            self.carOne.center = CGPointMake(141, 473);
        }];
        
        
        ///////0.5
        [UIView addKeyframeWithRelativeStartTime:0.65f relativeDuration:0.02f animations:^{
            self.carOne.degree = 60.f;
        }];
        [UIView addKeyframeWithRelativeStartTime:0.65f relativeDuration:0.05f animations:^{
            self.carOne.center = CGPointMake(148, 428);
        }];
        
        ///////3
        [UIView addKeyframeWithRelativeStartTime:0.7f relativeDuration:0.02f animations:^{
            self.carOne.degree = -30.f;
        }];
        [UIView addKeyframeWithRelativeStartTime:0.7f relativeDuration:0.3f animations:^{
            self.carOne.center = CGPointMake(-37, 30);
        }];
        
        
        
    } completion:^(BOOL finished) {
        self.carOne.center = CGPointMake(120, 987);
    }];

    
    
    
}
- (IBAction)loginButtonPressed:(id)sender
{
    [self addChildViewController:self.loginVC];
    [self.view addSubview:self.loginVC.view];
    self.loginVC.view.alpha = 0.f;
    [UIView animateWithDuration:0.3f animations:^{
        self.loginVC.view.alpha = 1.f;
    }];
}
- (void)dangerDetect
{
    [self.car beginFlash];
    [self performSelector:@selector(dangerEnd) withObject:nil afterDelay:3.f];
}
- (void)dangerEnd
{
    self.dangerButton.userInteractionEnabled = YES;
    self.dangerButton.selected = NO;
    [self.myCar endWarning];
    [self.car endFlash];
}
- (IBAction)dangerButtonPressed:(id)sender {
//        [self.myCar endWarning];
    self.dangerButton.selected = YES;
    self.dangerButton.userInteractionEnabled = NO;
    [self.myCar beginWarning];
    [self performSelector:@selector(dangerDetect) withObject:nil afterDelay:3.f];
    
}

- (IBAction)helpButtonPressed:(id)sender
{
    [self addChildViewController:self.helpVC];
    [self.view addSubview:self.helpVC.view];
    self.helpVC.view.alpha = 0.f;
    [UIView animateWithDuration:0.3f animations:^{
        self.helpVC.view.alpha = 1.f;
    }];
}
- (IBAction)evaluateButtonPressed:(id)sender
{
    if (self.isCarSelected)
    {
        [self addChildViewController:self.evalueVC];
        [self.view addSubview:self.evalueVC.view];
        self.evalueVC.view.alpha = 0.f;
        [UIView animateWithDuration:0.3f animations:^{
            self.evalueVC.view.alpha = 1.f;
        }];
    }
}
- (IBAction)matchButtonPressed:(id)sender
{

//    [self.myCar endFocus];
//    [self.myCar endFlash];
//    [self.carOne endFlash];
}

- (IBAction)settingButtonPressed:(id)sender {
//    [self.myCar beginFocus];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch* touch = [touches anyObject];
    CGPoint location = [touch locationInView:self.view];
    CGRect rect = CGRectMake(599, 515, 169, 357);
    
    if (CGRectContainsPoint(rect, location))
    {
        self.isCarSelected = !self.isCarSelected;
        
        if (self.isCarSelected)
        {
            [self.car beginFocus];
        }
        else
        {
            [self.car endFocus];
        }
    }
    
}
@end
