//
//  Circle.m
//  RoseDaVinci
//
//  Created by Rose CW on 8/22/12.
//  Copyright (c) 2012 Rose CW. All rights reserved.
//

#import "Circle.h"
@interface Circle ()
-(CGFloat) distanceBetweenPoint1andPoint2;
-(CGPoint)midpointFromPoint1andPoint2;
@end

@implementation Circle
@synthesize radius;
@synthesize centerPoint;

-(void)draw:(CGContextRef)ctx{
    CGContextAddArc(ctx, self.centerPoint.x, self.centerPoint.y, self.radius, 0.0, M_PI*2.0, YES);
    CGContextStrokePath(ctx);
}

-(void)touchesBegan:(NSSet *)touches{
    if ([touches count] == 2) {
        UITouch *touch1 = [[touches allObjects]objectAtIndex:0];
        UITouch *touch2 = [[touches allObjects]objectAtIndex:1];

        CGPoint point1 = [touch1 locationInView:touch1.view];
        CGPoint point2 = [touch2 locationInView:touch2.view];

        self.radius = [self distanceBetweenPoint1:point1 andPoint2:point2];
        self.centerPoint = [self midpointFromPoint1:point1 andPoint2:point2];
    }
}

-(void) touchesMoved:(NSSet *)touches{
    if ([touches count] == 2) {
        UITouch *touch1 = [[touches allObjects]objectAtIndex:0];
        UITouch *touch2 = [[touches allObjects]objectAtIndex:1];
        
        CGPoint point1 = [touch1 locationInView:touch1.view];
        CGPoint point2 = [touch2 locationInView:touch2.view];
        
        self.radius = [self distanceBetweenPoint1:point1 andPoint2:point2];
    }
}

-(CGPoint)midpointFromPoint1:(CGPoint)p1 andPoint2:(CGPoint)p2
{
    return CGPointMake((p1.x + p2.x) / 2, (p1.y + p2.y) / 2);
}

-(CGFloat) distanceBetweenPoint1:(CGPoint) point1 andPoint2:(CGPoint) point2 {
    CGFloat dx = point2.x - point1.x;
    CGFloat dy = point2.y - point1.y;
    return sqrt(dx*dx + dy*dy );
};

@end
