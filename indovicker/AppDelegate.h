//
//  AppDelegate.h
//  indovicker
//
//  Created by Zein Rezky Chandra on 4/22/15.
//  Copyright (c) 2015 Crocodic Indonesia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "IpadViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, strong) UINavigationController *navController;
@property (nonatomic, strong) ViewController *landingPageViewController;
@property (nonatomic, strong) IpadViewController *landingPageIpadViewController;

@end

