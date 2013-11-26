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

- (void)hide;

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
    
    [self.evalueView removeFromSuperview];
    [self.infoView removeFromSuperview];
    
    self.scrollView.contentSize = CGSizeMake(960, 448);
    [self.scrollView addSubview:self.evalueView];
    [self.scrollView addSubview:self.infoView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)tagButtonPressed:(UIButton *)sender
{
    self.tagLabel.text = sender.titleLabel.text;
}

- (IBAction)sendButtonPressed:(id)sender
{
    [self hide];
}
- (IBAction)blackListButtonPressed:(id)sender
{
    [self hide];
}
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    CGPoint point = self.scrollView.contentOffset;
    if (point.x < 480)
    {
        self.pageControl.currentPage = 0;
    }
    else
    {
        self.pageControl.currentPage = 1;
    }
}

- (void)hide
{
    [UIView animateWithDuration:1.f animations:^{
        self.view.alpha = 0;
    } completion:^(BOOL finished) {
        self.vc.evalueVC = nil;
        [self.view removeFromSuperview];
        [self removeFromParentViewController];
        [self.vc.car endFocus];
    }];
    
}


@end
