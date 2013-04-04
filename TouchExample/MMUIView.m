//
//  MMUIView.m
//  TouchExample
//
//  Created by RHINO on 3/7/13.
//  Copyright (c) 2013 RHINO. All rights reserved.
//

#import "MMUIView.h"

@implementation MMUIView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        // Initialization code
    }
    return self;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    originalPoint = [touch locationInView:self];
    self.backgroundColor = [UIColor blueColor];
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self.superview];
    self.frame = CGRectMake(point.x - originalPoint.x, point.y - originalPoint.y, self.frame.size.width, self.frame.size.height);
}

/*
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    self.backgroundColor = [UIColor whiteColor];
}
*/

@end
