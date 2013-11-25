//
//  WXYMyCarView.m
//  D2Demo
//
//  Created by wxy325 on 11/25/13.
//  Copyright (c) 2013 Tongji Univ. All rights reserved.
//

#import "WXYMyCarView.h"

@implementation WXYMyCarView

- (id)init
{
    self = [super initWithImage:[UIImage imageNamed:@"mycar.png"] circle:[UIImage imageNamed:@"red_circle.png"]];
    if (self)
    {
        
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
