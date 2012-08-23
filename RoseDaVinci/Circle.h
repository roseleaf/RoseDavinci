//
//  Circle.h
//  RoseDaVinci
//
//  Created by Rose CW on 8/22/12.
//  Copyright (c) 2012 Rose CW. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Drawable.h"

@interface Circle : NSObject <Drawable>
@property float radius;
@property CGPoint centerPoint;

@end
