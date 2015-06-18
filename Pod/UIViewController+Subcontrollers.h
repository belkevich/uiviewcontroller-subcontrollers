//
//  UIViewController+Subcontrollers.h
//  UIViewController+Subcontrollers
//
//  Created by Alexey Belkevich on 18.06.15.
//  Copyright (c) 2015 okolodev. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (Subcontrollers)

- (void)addSubcontroller:(UIViewController *)subcontroller;
- (void)addSubcontroller:(UIViewController *)subcontroller toView:(UIView *)view;
- (void)addSubcontroller:(UIViewController *)subcontroller toView:(UIView *)view frame:(CGRect)frame;
- (void)removeFromParentController;

@end
