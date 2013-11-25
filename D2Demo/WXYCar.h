//
//  WXYCar.h
//  D2Demo
//
//  Created by wxy325 on 11/25/13.
//  Copyright (c) 2013 Tongji Univ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WXYCar : UIView

@property (assign, nonatomic) float degree;     //车辆朝向角度

- (id)initWithImage:(UIImage*)carImage circle:(UIImage*)circleImage;

- (void)beginWarning;
- (void)endWarning;
- (void)beginFocus;
- (void)endFocus;
- (void)beginFlash;
- (void)endFlash;
@end
