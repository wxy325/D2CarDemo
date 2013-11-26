//
//  WXYNearCarViewController.h
//  D2Demo
//
//  Created by wxy325 on 11/25/13.
//  Copyright (c) 2013 Tongji Univ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WXYMyCarView.h"
#import "WXYOtherCarView.h"

@class WXYEvalueViewController;
@class WXYHelpViewController;
@class WXYLoginViewController;

@interface WXYNearCarViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *bgView;
- (IBAction)loginButtonPressed:(id)sender;
- (IBAction)dangerButtonPressed:(id)sender;
- (IBAction)helpButtonPressed:(id)sender;
- (IBAction)evaluateButtonPressed:(id)sender;
- (IBAction)matchButtonPressed:(id)sender;
- (IBAction)settingButtonPressed:(id)sender;

@property (strong, nonatomic) WXYHelpViewController* helpVC;
@property (strong, nonatomic) WXYLoginViewController* loginVC;
@property (strong, nonatomic) WXYEvalueViewController* evalueVC;
@property (weak, nonatomic) IBOutlet UIButton *dangerButton;

@property (strong, nonatomic) WXYMyCarView* myCar;
@property (strong, nonatomic) WXYOtherCarView* carOne;
@property (strong, nonatomic) WXYOtherCarView* car;

@end
