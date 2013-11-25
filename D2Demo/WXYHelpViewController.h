//
//  WXYHelpViewController.h
//  D2Demo
//
//  Created by wxy325 on 11/26/13.
//  Copyright (c) 2013 Tongji Univ. All rights reserved.
//

#import <UIKit/UIKit.h>

@class WXYNearCarViewController;

@interface WXYHelpViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *helpFocus;
@property (weak, nonatomic) IBOutlet UIImageView *helpPanel;
@property (weak, nonatomic) IBOutlet UIImageView *helpText;
@property (weak, nonatomic) IBOutlet UIImageView *helpWait;
@property (weak, nonatomic) IBOutlet UIImageView *helpSuccess;

@property (weak, nonatomic) WXYNearCarViewController* vc;

@end

