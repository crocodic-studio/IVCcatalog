//
//  MenuViewController.m
//  indovicker
//
//  Created by Zein Rezky Chandra on 4/26/15.
//  Copyright (c) 2015 Crocodic Indonesia. All rights reserved.
//

#import "MenuViewController.h"
#import "ViewController.h"

@interface MenuViewController ()

@end

@implementation MenuViewController

@synthesize btnAboutUs,
            btnAuditoriumSeating,
            btnEducationalInstitutional,
            btnHospital,
            btnMultipurposeSeating,
            btnOffice,
            btnProductOverview,
            btnPublicArea,
            dismissButton;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.preferredContentSize = CGSizeMake(320, 115);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)dismissButtonDidTouch:(id)sender {
    
    // Here's how to call dismiss button on the parent ViewController
    // be careful with view hierarchy
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
//    UIViewController * parent = [self.view containingViewController];
//    if ([parent respondsToSelector:@selector(dismissSemiModalView)]) {
//        [parent dismissSemiModalView];
//    }
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
