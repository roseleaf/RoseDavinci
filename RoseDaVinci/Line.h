//
//  Line.h
//  RoseDaVinci
//
//  Created by Rose CW on 8/21/12.
//  Copyright (c) 2012 Rose CW. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Drawable.h"

@interface Line : NSObject <Drawable>
@property CGPoint startpoint;
@property CGPoint endpoint;
@end
