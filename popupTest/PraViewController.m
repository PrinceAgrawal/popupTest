//
//  PraViewController.m
//  popupTest
//
//  Created by eff-mac-002 on 1/28/14.
//  Copyright (c) 2014 pravistaGroup. All rights reserved.
//

#import "PraViewController.h"

@interface PraViewController ()

@end

@implementation PraViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    CGPoint point = [[[event allTouches] anyObject] locationInView:self.view];
    for (UIImageView *sView in self.smileyImages)
    {
        if (CGRectContainsPoint([sView frame], point))
        {
            [self.popupView setHidden:NO];
            [self.popupImage setImage:[sView image]];
            CGPoint newCenter= CGPointMake(sView.center.x, sView.center.y-40);
            [self.popupView setCenter:newCenter];
        }
    }
    
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    CGPoint point = [[[event allTouches] anyObject] locationInView:self.view];
    for (UIImageView *sView in self.smileyImages)
    {
        if (CGRectContainsPoint([sView frame], point))
        {
            [self.popupView setHidden:NO];
            [self.popupImage setImage:[sView image]];
            CGPoint newCenter= CGPointMake(sView.center.x, sView.center.y-40);
            [self.popupView setCenter:newCenter];
        }
    }
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    CGPoint point = [[[event allTouches] anyObject] locationInView:self.view];
    for (UIImageView *sView in self.smileyImages)
    {
        if (CGRectContainsPoint([sView frame], point))
        {
            self.selectedImage= sView.image;
            [self.popupView setHidden:YES];
            break;
        }
    }
}


@end
