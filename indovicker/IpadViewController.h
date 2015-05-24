//
//  IpadViewController.h
//  indovicker
//
//  Created by Zein Rezky Chandra on 5/9/15.
//  Copyright (c) 2015 Crocodic Indonesia. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AboutUsIpadCell.h"
#import "AboutUsIpadLandscapeCell.h"
#import "HospitalIpadCell.h"
#import "MenuViewController.h"
#import "SwipeView.h"
#import <MessageUI/MessageUI.h>
#import <MessageUI/MFMessageComposeViewController.h>

#define IS_IOS8 ([[[UIDevice currentDevice] systemVersion] floatValue] >= 8)

@interface IpadViewController : UIViewController<UITableViewDataSource, UITableViewDelegate, SwipeViewDataSource, SwipeViewDelegate,MFMailComposeViewControllerDelegate>{
    IBOutlet AboutUsIpadCell *aboutUsCell;
    IBOutlet HospitalIpadCell *hospitalCell;
    IBOutlet AboutUsIpadLandscapeCell *aboutUsLandscapeCell;
    NSMutableArray *aboutContent;
    NSMutableArray *hospitalContentOne;
    NSMutableArray *hospitalContentTwo;
    NSMutableArray *hospitalContentThree;
    NSMutableArray *publicAreaContentOne;
    NSMutableArray *publicAreaContentTwo;
    NSMutableArray *publicAreaContentThree;
    NSMutableArray *publicAreaContentFour;
    NSMutableArray *officeContentOne;
    NSMutableArray *officeContentTwo;
    NSMutableArray *officeContentThree;
    NSMutableArray *officeContentFour;
    NSMutableArray *officeContentFive;
    NSMutableArray *officeContentSix;
    NSMutableArray *officeContentSeven;
    NSMutableArray *officeContentEight;
    NSMutableArray *officeContentNine;
    NSMutableArray *officeContentTen;
    NSMutableArray *officeContentEleven;
    NSMutableArray *officeContentTwelve;
    NSMutableArray *auditSeatContent;
    NSMutableArray *multiSeatContentOne;
    NSMutableArray *multiSeatContentTwo;
    NSMutableArray *multiSeatContentThree;
    NSMutableArray *educationalContent;
    
    MenuViewController * semiVC;
    
    BOOL isOffice;
    BOOL isHospital;
    BOOL isPublicArea;
    BOOL isAboutUs;
    BOOL isAuditSeat;
    BOOL isMultSeat;
    BOOL isEducInst;
}

@property (nonatomic, strong) UITableView *tableViewS;
@property (nonatomic, retain) NSMutableArray *aboutContent;
@property (nonatomic, retain) NSMutableArray *hospitalContentOne;
@property (nonatomic, retain) NSMutableArray *hospitalContentTwo;
@property (nonatomic, retain) NSMutableArray *hospitalContentThree;
@property (nonatomic, retain) NSMutableArray *publicAreaContentOne;
@property (nonatomic, retain) NSMutableArray *publicAreaContentTwo;
@property (nonatomic, retain) NSMutableArray *publicAreaContentThree;
@property (nonatomic, retain) NSMutableArray *publicAreaContentFour;
@property (nonatomic, retain) NSMutableArray *officeContentOne;
@property (nonatomic, retain) NSMutableArray *officeContentTwo;
@property (nonatomic, retain) NSMutableArray *officeContentThree;
@property (nonatomic, retain) NSMutableArray *officeContentFour;
@property (nonatomic, retain) NSMutableArray *officeContentFive;
@property (nonatomic, retain) NSMutableArray *officeContentSix;
@property (nonatomic, retain) NSMutableArray *officeContentSeven;
@property (nonatomic, retain) NSMutableArray *officeContentEight;
@property (nonatomic, retain) NSMutableArray *officeContentNine;
@property (nonatomic, retain) NSMutableArray *officeContentTen;
@property (nonatomic, retain) NSMutableArray *officeContentEleven;
@property (nonatomic, retain) NSMutableArray *officeContentTwelve;
@property (nonatomic, retain) NSMutableArray *auditSeatContent;
@property (nonatomic, retain) NSMutableArray *multiSeatContentOne;
@property (nonatomic, retain) NSMutableArray *multiSeatContentTwo;
@property (nonatomic, retain) NSMutableArray *multiSeatContentThree;
@property (nonatomic, retain) NSMutableArray *educationalContent;

@property (strong, nonatomic) IBOutlet SwipeView *swipeView;
@property (strong, nonatomic) IBOutlet UIView *viewMenu;
@property (strong, nonatomic) IBOutlet UIButton *btnEmail;
@property (strong, nonatomic) IBOutlet UIButton *btnOffice;
@property (strong, nonatomic) IBOutlet UIButton *btnHospital;
@property (strong, nonatomic) IBOutlet UIButton *btnPublicArea;
@property (strong, nonatomic) IBOutlet UIButton *btnAboutUs;
@property (strong, nonatomic) IBOutlet UIButton *btnAuditoriumSeating;
@property (strong, nonatomic) IBOutlet UIButton *btnMultipurposeSeating;
@property (strong, nonatomic) IBOutlet UIButton *btnEducationalInstitutional;
@property (strong, nonatomic) IBOutlet UIButton *btnMenu;
@property (strong, nonatomic) IBOutlet UIButton *btnMenuLandscape;
@property (strong, nonatomic) IBOutlet UIButton *dismissButton;

@property (strong, nonatomic) IBOutlet UIView *viewMenuIpad;
@property (strong, nonatomic) IBOutlet UIButton *btnOfficeRight;
@property (strong, nonatomic) IBOutlet UIButton *btnHospitalRight;
@property (strong, nonatomic) IBOutlet UIButton *btnPublicAreaRight;
@property (strong, nonatomic) IBOutlet UIButton *btnAboutUsRight;
@property (strong, nonatomic) IBOutlet UIButton *btnAuditoriumSeatingRight;
@property (strong, nonatomic) IBOutlet UIButton *btnMultipurposeSeatingRight;
@property (strong, nonatomic) IBOutlet UIButton *btnEducationalInstitutionalRight;

- (IBAction)dismissButtonDidTouch:(id)sender;
- (IBAction)buttonDidTouch:(id)sender;

@end