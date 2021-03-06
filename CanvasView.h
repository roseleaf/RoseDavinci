//
//  CanvasView.h
//  RoseDaVinci
//
//  Created by Rose CW on 8/21/12.
//  Copyright (c) 2012 Rose CW. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Drawable.h"

@interface CanvasView : UIView
typedef enum {
    LINE_MODE,
    FREE_MODE,
    CIRCLE_MODE,
    TRIANGLE_MODE
} Mode;
@property Mode currentMode;
@property (strong)NSMutableArray* completedDrawables;
@property (strong)id<Drawable> currentDrawable;

@end
