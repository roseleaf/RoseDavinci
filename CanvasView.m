//
//  CanvasView.m
//  RoseDaVinci
//
//  Created by Rose CW on 8/21/12.
//  Copyright (c) 2012 Rose CW. All rights reserved.
//

#import "CanvasView.h"
#import "Line.h"
#import "FreeformLine.h"
#import "Circle.h"

@interface CanvasView ()

@property (strong)id<Drawable> currentDrawable;
@property (strong)NSMutableArray* completedDrawables;

@end



@implementation CanvasView

@synthesize completedDrawables;
@synthesize currentDrawable;
@synthesize currentMode;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        self.completedDrawables = [NSMutableArray new];
        // Initialization code
    }
    return self;
}


- (void)drawRect:(CGRect)rect
{
    [[UIColor blackColor]setStroke];
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    [self.currentDrawable draw:ctx];
    
    for (id<Drawable> d in self.completedDrawables){
        [d draw:ctx];
    }
    
}




-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    self.currentDrawable = [self createNewDrawable];
    [self.currentDrawable touchesBegan:touches];
}

-(void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    [self.currentDrawable touchesMoved:touches];
    [self setNeedsDisplay];
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
//    Line* newLine = [Line new];
//    newLine.startpoint = self.startpoint;
//    newLine.endpoint = self.endpoint;
    [self.completedDrawables addObject:currentDrawable];
    [self setNeedsDisplay];
    
}


-(id<Drawable>)createNewDrawable{
    id <Drawable> drawable;
    if (self.currentMode == LINE_MODE){
        drawable = [Line new];
    }
    if (self.currentMode == FREE_MODE){
        drawable = [FreeformLine new];
    }
    if (self.currentMode == CIRCLE_MODE){
        drawable = [Circle new];
    }
    return drawable;
}


@end
