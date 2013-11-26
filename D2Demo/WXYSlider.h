//
//  WXYSlider.h
//  D2Demo
//
//  Created by wxy325 on 11/26/13.
//  Copyright (c) 2013 Tongji Univ. All rights reserved.
//

#import <UIKit/UIKit.h>
@class WXYEvalueViewController;

@interface WXYSlider : UIView
@property (strong, nonatomic) IBOutlet UIImageView* sliderLine;
@property (strong, nonatomic) IBOutlet UIImageView* sliderDot;
@property (strong, nonatomic) IBOutlet UIImageView* sliderSelect;
@property (weak, nonatomic) WXYEvalueViewController* vc;

+ (WXYSlider*)slider;

@end
