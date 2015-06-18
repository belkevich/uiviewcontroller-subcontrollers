//
//  ViewController.m
//  Example
//
//  Created by Alexey Belkevich on 18.06.15.
//  Copyright (c) 2015 okolodev. All rights reserved.
//

#import "HomeViewController.h"
#import "ChildViewController.h"
#import "UIViewController+Subcontrollers.h"


@interface HomeViewController ()
@property (nonatomic, strong) UIViewController *childController;
@property (nonatomic, assign) BOOL isChildShown;
@end


@implementation HomeViewController

#pragma mark - appearance

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.childController = [ChildViewController new];
}
#pragma mark - actions

- (IBAction)childButtonTapped:(id)sender
{
    if (!self.isChildShown)
    {
        self.childController.view.alpha = 0.f;
        [self addSubcontroller:self.childController];
        [UIView animateWithDuration:0.3f animations:^
        {
            self.childController.view.alpha = 1.f;
        } completion:^(BOOL finished)
        {
            self.isChildShown = YES;
        }];
    }
}

- (IBAction)homeButtonTapped:(id)sender
{
    if (self.isChildShown)
    {
        [UIView animateWithDuration:0.3f animations:^
        {
            self.childController.view.alpha = 0.f;
        } completion:^(BOOL finished)
        {
            [self.childController removeFromParentController];
            self.isChildShown = NO;
        }];
    }
}

@end
