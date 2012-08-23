//
//  Line.m
//  RoseDaVinci
//
//  Created by Rose CW on 8/21/12.
//  Copyright (c) 2012 Rose CW. All rights reserved.
//

#import "Line.h"
#import "Drawable.h"

@implementation Line
@synthesize startpoint;
@synthesize endpoint;

-(void)draw:(CGContextRef)ctx{
    
    CGContextMoveToPoint(ctx, self.startpoint.x, self.startpoint.y);
    CGContextAddLineToPoint(ctx, self.endpoint.x, self.endpoint.y);
    CGContextStrokePath(ctx);
}

-(void)touchesBegan:(NSSet *)touches{
    UITouch* touch = [touches anyObject];
    self.startpoint = [touch locationInView:touch.view];
}

-(void) touchesMoved:(NSSet *)touches{
    UITouch* touch = [touches anyObject];
    self.endpoint = [touch locationInView:touch.view];
}



@end
