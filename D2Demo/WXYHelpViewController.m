//
//  WXYHelpViewController.m
//  D2Demo
//
//  Created by wxy325 on 11/26/13.
//  Copyright (c) 2013 Tongji Univ. All rights reserved.
//

#import "WXYHelpViewController.h"
#import "WXYNearCarViewController.h"
@interface WXYHelpViewController ()

@property (assign, nonatomic) int state;

@end

@implementation WXYHelpViewController

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
	// Do any additional setup after loading the view.
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"aaa");
    switch (self.state)
    {
        case 0:
            self.helpFocus.hidden = NO;
            break;
        case 1:
            self.helpText.hidden = NO;
            break;
        case 2:
            self.helpWait.hidden = NO;
            self.view.userInteractionEnabled = NO;
            
            [self.vc.myCar beginWarning];
            
            
            
            [self performSelector:@selector(helpSucceed) withObject:nil afterDelay:4.f];
            
    }
    self.state++;
}
- (void)helpSucceed
{
    self.helpPanel.hidden = YES;
    self.helpFocus.hidden = YES;
    self.helpText.hidden = YES;
    self.helpWait.hidden = YES;
    self.helpSuccess.hidden = NO;
    [self performSelector:@selector(helpFinish) withObject:nil afterDelay:3.f];
    [self.vc.car beginFocus];
}

- (void)helpFinish
{
    [UIView animateWithDuration:1.f animations:^{
        self.helpSuccess.alpha = 0.f;
    } completion:^(BOOL finished)
    {
        [self.view removeFromSuperview];
        [self removeFromParentViewController];
        self.vc.helpVC = nil;
        [self.vc.myCar endWarning];
        [self.vc.car endFocus];
    }];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
