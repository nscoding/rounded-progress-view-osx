//
//  PCAppDelegate.m
//  Rounded Progress View
//
//  Created by Patrick Chamelo on 10/05/14.
//  Copyright (c) 2014 Patrick Chamelo. All rights reserved.
//

#import "PCAppDelegate.h"
#import "PCProgressView.h"


@interface PCAppDelegate()

@property (nonatomic, strong) PCProgressView *progressView;

@end


@implementation PCAppDelegate


- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    self.progressView = [[PCProgressView alloc] initWithFrame:[self.window.contentView bounds]];
    self.progressView.progresslineWidth = 10.0f;
    self.progressView.backgroundLineWidth = 20.0f;
    self.progressView.progressLineColor = [NSColor whiteColor];
    self.progressView.backgroundLineColor = [NSColor colorWithCalibratedRed:0.204f green:0.322f blue:0.427f alpha:1.00f];
    
    [self.progressView setProgress:0.50f animated:YES];
    [self.window.contentView addSubview:self.progressView];
    
    [NSTimer scheduledTimerWithTimeInterval:1.0f
                                     target:self
                                   selector:@selector(animate)
                                   userInfo:nil
                                    repeats:YES];
}


- (void)animate
{
    CGFloat random = arc4random() % 100;
    CGFloat progress = (random / 100);
    [self.progressView setProgress:progress animated:YES];
}


@end
