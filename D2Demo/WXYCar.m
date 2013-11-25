//
//  WXYCar.m
//  D2Demo
//
//  Created by wxy325 on 11/25/13.
//  Copyright (c) 2013 Tongji Univ. All rights reserved.
//

#import "WXYCar.h"
#import <QuartzCore/QuartzCore.h>

@interface WXYCar ()

@property (strong, nonatomic) UIImageView* carImageView;
@property (strong, nonatomic) UIImageView* circleImageView;
@property (strong, nonatomic) UIImageView* circleImageView2;
@end

@implementation WXYCar


@synthesize degree = _degree;

- (void)setDegree:(float)degree
{
    _degree = degree;
    self.carImageView.transform = CGAffineTransformMakeRotation(degree * M_PI / 180.f);
}


- (id)initWithImage:(UIImage*)carImage circle:(UIImage*)circleImage
{
    self = [super init];
    if ([super initWithFrame:CGRectMake(0, 0, 37, 37)])
    {
        self.carImageView = [[UIImageView alloc] initWithImage:carImage];
        self.circleImageView = [[UIImageView alloc] initWithImage:circleImage];
        self.circleImageView.frame = CGRectMake(-15, -15, 66, 66);
        
        self.circleImageView2 = [[UIImageView alloc] initWithImage:circleImage];
        self.circleImageView2.frame = CGRectMake(-15, -15, 66, 66);
        
        self.circleImageView.hidden = YES;
        self.circleImageView2.hidden = YES;
        self.circleImageView2.transform = CGAffineTransformMakeScale(2.f, 2.f);
        
        self.carImageView.frame = CGRectMake(0, 0, 37, 37);
        [self addSubview:self.circleImageView];
        [self addSubview:self.circleImageView2];
        [self addSubview:self.carImageView];
    }
    return self;
}


- (void)beginWarning
{
    self.circleImageView.hidden = NO;
    self.circleImageView2.hidden = NO;
    self.circleImageView.transform = CGAffineTransformMakeScale(0.5f, 0.5f);
    self.circleImageView2.transform = CGAffineTransformMakeScale(0.5f, 0.5f);
    
    
    [UIView animateKeyframesWithDuration:2.f delay:0.f options:UIViewKeyframeAnimationOptionRepeat animations:^{
       [UIView addKeyframeWithRelativeStartTime:0.f relativeDuration:0.5f animations:^{
           self.circleImageView.transform = CGAffineTransformMakeScale(1.5f, 1.5f);
       }];
        [UIView addKeyframeWithRelativeStartTime:0.5f relativeDuration:0.5f animations:^{
            self.circleImageView.transform = CGAffineTransformMakeScale(2.f, 2.f);
            self.circleImageView2.transform = CGAffineTransformMakeScale(1.5f, 1.5f);
        }];

    } completion:^(BOOL finished) {
        self.circleImageView.transform = CGAffineTransformMakeScale(0.5f, 0.5f);
        self.circleImageView2.transform = CGAffineTransformMakeScale(0.5f, 0.5f);
    }];
    
}
- (void)endWarning
{
    [self.circleImageView.layer removeAllAnimations];
    [self.circleImageView2.layer removeAllAnimations];
}
- (void)beginFocus
{
    self.circleImageView.hidden = NO;
    self.circleImageView.transform = CGAffineTransformMakeScale(2.f, 2.f);
    [UIView animateWithDuration:1.f delay:0.f options:UIViewAnimationOptionRepeat animations:^{
        self.circleImageView.transform = CGAffineTransformMakeScale(0.5f, 0.5f);
    } completion:^(BOOL finished) {
        self.circleImageView.transform = CGAffineTransformMakeScale(2.f, 2.f);
    }];
}
- (void)endFocus
{
    [self.circleImageView.layer removeAllAnimations];
    self.circleImageView.hidden = YES;
}

- (void)beginFlash
{
    self.circleImageView.hidden = NO;
    self.circleImageView.transform = CGAffineTransformMakeScale(1.f, 1.f);
    [UIView animateKeyframesWithDuration:0.3f delay:0.f options:UIViewKeyframeAnimationOptionRepeat animations:^
    {
        [UIView addKeyframeWithRelativeStartTime:0.f relativeDuration:0.1f animations:^{
            self.circleImageView.alpha = 0.f;
        }];

        [UIView addKeyframeWithRelativeStartTime:0.5f relativeDuration:0.1f animations:^{
            self.circleImageView.alpha = 1.f;
        }];
    }
                              completion:^(BOOL finished)
    {
        
    }];
    
}
- (void)endFlash
{
    [self.circleImageView.layer removeAllAnimations];
    self.circleImageView.hidden = YES;
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
