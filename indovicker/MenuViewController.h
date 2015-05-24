//
//  MenuViewController.h
//  indovicker
//
//  Created by Zein Rezky Chandra on 4/26/15.
//  Copyright (c) 2015 Crocodic Indonesia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MenuViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIButton *btnOffice;
@property (strong, nonatomic) IBOutlet UIButton *btnHospital;
@property (strong, nonatomic) IBOutlet UIButton *btnPublicArea;
@property (strong, nonatomic) IBOutlet UIButton *btnAboutUs;
@property (strong, nonatomic) IBOutlet UIButton *btnAuditoriumSeating;
@property (strong, nonatomic) IBOutlet UIButton *btnMultipurposeSeating;
@property (strong, nonatomic) IBOutlet UIButton *btnProductOverview;
@property (strong, nonatomic) IBOutlet UIButton *btnEducationalInstitutional;

@property (strong, nonatomic) IBOutlet UIButton *dismissButton;

- (IBAction)dismissButtonDidTouch:(id)sender;

@end
