//
//  WXYEvalueViewController.h
//  D2Demo
//
//  Created by wxy325 on 11/26/13.
//  Copyright (c) 2013 Tongji Univ. All rights reserved.
//

#import <UIKit/UIKit.h>
@class WXYNearCarViewController;

@interface WXYEvalueViewController : UIViewController<UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIView *evalueView;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;


@property (weak, nonatomic) IBOutlet UIView *sliderContainer;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (weak, nonatomic) IBOutlet UILabel *tagLabel;
@property (weak, nonatomic) WXYNearCarViewController* vc;
- (IBAction)tagButtonPressed:(UIButton *)sender;
- (IBAction)sendButtonPressed:(id)sender;

@property (weak, nonatomic) IBOutlet UIView *infoView;

@end
