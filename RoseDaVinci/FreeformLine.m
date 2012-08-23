//
//  FreeformLine.m
//  RoseDaVinci
//
//  Created by Rose CW on 8/22/12.
//  Copyright (c) 2012 Rose CW. All rights reserved.
//

#import "FreeformLine.h"

@implementation FreeformLine
@synthesize points;


-(void)draw:(CGContextRef)ctx{
    CGPoint firstPoint = [[self.points objectAtIndex:0] CGPointValue];
    
    CGContextMoveToPoint(ctx, firstPoint.x, firstPoint.y);
    
    for (int i = 0; i < [self.points count]; i++){
        CGPoint point = [[self.points objectAtIndex:i] CGPointValue];
        CGContextAddLineToPoint(ctx, point.x, point.y);
    }
    CGContextStrokePath(ctx);
}

-(void)touchesBegan:(NSSet *)touches{
    self.points = [NSMutableArray new];
    UITouch* touch = [touches anyObject];
    [self.points addObject: [NSValue valueWithCGPoint:[touch locationInView:touch.view]]];
}

-(void) touchesMoved:(NSSet *)touches{
    UITouch* touch = [touches anyObject];
    [self.points addObject: [NSValue valueWithCGPoint:[touch locationInView:touch.view]]];
}
@end
