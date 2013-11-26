//
//  WXYEvalueViewController.h
//  D2Demo
//
//  Created by wxy325 on 11/26/13.
//  Copyright (c) 2013 Tongji Univ. All rights reserved.
//

#import <UIKit/UIKit.h>
@class WXYNearCarViewController;

@interface WXYEvalueViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIView *sliderContainer;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (weak, nonatomic) WXYNearCarViewController* vc;
@end
