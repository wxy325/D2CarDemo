//
//  WXYLoginViewController.m
//  D2Demo
//
//  Created by wxy325 on 11/26/13.
//  Copyright (c) 2013 Tongji Univ. All rights reserved.
//

#import "WXYLoginViewController.h"
#import "WXYNearCarViewController.h"

@interface WXYLoginViewController ()

@property (assign, nonatomic) int state;

@end

@implementation WXYLoginViewController

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
    self.state = 0;
    self.loginText.hidden = YES;
    self.loginPasswd.hidden = YES;
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    switch (self.state)
    {
        case 0:
            self.loginText.hidden = NO;
            break;
        case 1:
            self.loginPasswd.hidden = NO;
            break;
        default:
            [UIView animateWithDuration:1.f animations:^{
                self.view.alpha = 0;
            } completion:^(BOOL finished) {
                self.vc.loginVC = nil;
                [self.view removeFromSuperview];
                [self removeFromParentViewController];
            }];
            break;
    }
    self.state++;
}

@end
