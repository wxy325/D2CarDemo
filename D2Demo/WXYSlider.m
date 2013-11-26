//
//  WXYSlider.m
//  D2Demo
//
//  Created by wxy325 on 11/26/13.
//  Copyright (c) 2013 Tongji Univ. All rights reserved.
//

#import "WXYSlider.h"

#import "WXYEvalueViewController.h"

@interface WXYSlider ()

@end

@implementation WXYSlider

+ (WXYSlider*)slider
{
    UINib* nib = [UINib nibWithNibName:@"slider" bundle:[NSBundle mainBundle]];
    NSArray* array = [nib instantiateWithOwner:self options:nil];
    WXYSlider* slider = array[0];
    slider.sliderSelect.contentMode = UIViewContentModeScaleAspectFill;
    return slider;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch* touch = [touches anyObject];
    CGPoint point = [touch locationInView:self];
    point = point.x > 283? CGPointMake(283, point.y) : point;
    point = point.x < 0? CGPointMake(0, point.y) : point;
    CGRect rect = self.sliderSelect.frame;
    self.sliderSelect.frame = CGRectMake(0, rect.origin.y, point.x, rect.size.height);

    self.sliderDot.center = CGPointMake(point.x, self.sliderDot.center.y);
    
    int score = 100 *point.x / 283;
    score = score < 0? 0: score;
    score = score > 100 ? 100 : score;
    self.vc.scoreLabel.text = [NSString stringWithFormat:@"%d",score];
    
    
}
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"aa");
    UITouch* touch = [touches anyObject];
    CGPoint point = [touch locationInView:self];
    point = point.x > 283? CGPointMake(283, point.y) : point;
    point = point.x < 0? CGPointMake(0, point.y) : point;
    CGRect rect = self.sliderSelect.frame;
    self.sliderSelect.frame = CGRectMake(0, rect.origin.y, point.x, rect.size.height);
    
    
    self.sliderDot.center = CGPointMake(point.x, self.sliderDot.center.y);
    
    
    int score = 100 *point.x / 283;
    score = score < 0? 0: score;
    score = score > 100 ? 100 : score;
    self.vc.scoreLabel.text = [NSString stringWithFormat:@"%d",score];
}
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"aa");
    UITouch* touch = [touches anyObject];
    CGPoint point = [touch locationInView:self];
    
    point = point.x > 283? CGPointMake(283, point.y) : point;
    point = point.x < 0? CGPointMake(0, point.y) : point;
    
    CGRect rect = self.sliderSelect.frame;
    self.sliderSelect.frame = CGRectMake(0, rect.origin.y, point.x, rect.size.height);
    
    
    self.sliderDot.center = CGPointMake(point.x, self.sliderDot.center.y);
    
    int score = 100 *point.x / 283;
    score = score < 0? 0: score;
    score = score > 100 ? 100 : score;
    self.vc.scoreLabel.text = [NSString stringWithFormat:@"%d",score];
    
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
