//
//  Sview.m
//  FaceDetect
//
//  Created by sskh on 13-11-21.
//  Copyright (c) 2013年 iObitLXF. All rights reserved.
//

#import "Sview.h"

@implementation Sview
@synthesize image1;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void)drawRect:(CGRect)rect
{
    CGContextRef contex= UIGraphicsGetCurrentContext();
    UIColor *aColor = [UIColor colorWithRed:0 green:1 blue:1 alpha:1];
  //  CGContextSetFillColorWithColor(contex, aColor.CGColor);
    CGContextAddEllipseInRect(contex, CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height));
    CGContextDrawPath(contex, kCGPathFillStroke);
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
