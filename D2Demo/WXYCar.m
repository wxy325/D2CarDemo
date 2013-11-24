//
//  WXYCar.m
//  D2Demo
//
//  Created by wxy325 on 11/25/13.
//  Copyright (c) 2013 Tongji Univ. All rights reserved.
//

#import "WXYCar.h"

@interface WXYCar ()

@property (strong, nonatomic) UIImageView* carImageView;

@end

@implementation WXYCar


@synthesize degree = _degree;

- (void)setDegree:(float)degree
{
    _degree = degree;
    self.carImageView.transform = CGAffineTransformMakeRotation(degree * M_PI / 180.f);
}


- (id)initWithImage:(UIImage*)carImage
{
    self = [super init];
    if ([super initWithFrame:CGRectMake(0, 0, 37, 37)])
    {
        self.carImageView = [[UIImageView alloc] initWithImage:carImage];
        self.carImageView.frame = CGRectMake(0, 0, 37, 37);
        [self addSubview:self.carImageView];
    }
    return self;
}




/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
