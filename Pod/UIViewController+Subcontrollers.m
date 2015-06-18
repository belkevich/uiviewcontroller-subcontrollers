//
//  UIViewController+Subcontrollers.m
//  UIViewController+Subcontrollers
//
//  Created by Alexey Belkevich on 18.06.15.
//  Copyright (c) 2015 okolodev. All rights reserved.
//

#import "UIViewController+Subcontrollers.h"

@implementation UIViewController (Subcontrollers)

- (void)addSubcontroller:(UIViewController *)subcontroller
{
    [self addSubcontroller:subcontroller toView:self.view];
}

- (void)addSubcontroller:(UIViewController *)subcontroller toView:(UIView *)view
{
    [self addSubcontroller:subcontroller toView:view frame:view.frame];
}

- (void)addSubcontroller:(UIViewController *)subcontroller toView:(UIView *)view frame:(CGRect)frame
{
    [self addChildViewController:subcontroller];
    subcontroller.view.frame = frame;
    [view addSubview:subcontroller.view];
    [subcontroller didMoveToParentViewController:self];
}

- (void)removeFromParentController
{
    [self willMoveToParentViewController:nil];
    [self.view removeFromSuperview];
    [self removeFromParentViewController];
}

@end
