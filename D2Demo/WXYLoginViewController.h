//
//  WXYLoginViewController.h
//  D2Demo
//
//  Created by wxy325 on 11/26/13.
//  Copyright (c) 2013 Tongji Univ. All rights reserved.
//

#import <UIKit/UIKit.h>
@class WXYNearCarViewController;


@interface WXYLoginViewController : UIViewController

@property (weak, nonatomic) WXYNearCarViewController* vc;

@property (weak, nonatomic) IBOutlet UIImageView *loginPanel;

@property (weak, nonatomic) IBOutlet UIImageView *loginText;

@property (weak, nonatomic) IBOutlet UIImageView *loginPasswd;

@end
