//
//  CanvasViewController.m
//  RoseDaVinci
//
//  Created by Rose CW on 8/21/12.
//  Copyright (c) 2012 Rose CW. All rights reserved.
//

#import "CanvasViewController.h"
#import "CanvasView.h"

@interface CanvasViewController ()
@property (strong) CanvasView* canvasview;
@end

@implementation CanvasViewController
@synthesize canvasview;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{

    [super viewDidLoad];
    
    CGRect viewSize = CGRectMake(0.0, 0.0, 320.0, self.view.frame.size.height -44);
    self.canvasview = [[CanvasView alloc] initWithFrame:viewSize];
    [self.view addSubview:canvasview];
    self.canvasview.currentMode = LINE_MODE;
    self.canvasview.multipleTouchEnabled = NO;
}



- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


- (IBAction)changeMode:(id)sender {
    
    UIButton* button = sender;
    if (button.tag == 101 ) {
        self.canvasview.currentMode = LINE_MODE;
        self.canvasview.multipleTouchEnabled = NO;
    } else if (button.tag == 102){
        self.canvasview.currentMode = FREE_MODE;
        self.canvasview.multipleTouchEnabled = NO;
    } else if (button.tag == 103){
        self.canvasview.currentMode = CIRCLE_MODE;
        self.canvasview.multipleTouchEnabled = YES;
    }
}
@end
