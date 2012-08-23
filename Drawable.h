//
//  Drawable.h
//  RoseDaVinci
//
//  Created by Rose CW on 8/22/12.
//  Copyright (c) 2012 Rose CW. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Drawable <NSObject>
-(void)draw:(CGContextRef) ctx;
-(void)touchesBegan:(NSSet *)touches;
-(void)touchesMoved:(NSSet *)touches;

@end
