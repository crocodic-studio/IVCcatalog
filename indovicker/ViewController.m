//
//  ViewController.m
//  indovicker
//
//  Created by Zein Rezky Chandra on 4/22/15.
//  Copyright (c) 2015 Crocodic Indonesia. All rights reserved.
//

#import "ViewController.h"
#import "JTSImageViewController.h"
#import "JTSImageInfo.h"

@interface ViewController (){
    BOOL isLandscape;
    BOOL isPortrait;
}

@property (readwrite) NSInteger flag;

@end

@implementation ViewController

@synthesize aboutContent;
@synthesize hospitalContentOne;
@synthesize hospitalContentTwo;
@synthesize hospitalContentThree;
@synthesize publicAreaContentOne;
@synthesize publicAreaContentTwo;
@synthesize publicAreaContentThree;
@synthesize publicAreaContentFour;
@synthesize officeContentOne;
@synthesize officeContentTwo;
@synthesize officeContentThree;
@synthesize officeContentFour;
@synthesize officeContentFive;
@synthesize officeContentSix;
@synthesize officeContentSeven;
@synthesize officeContentEight;
@synthesize officeContentNine;
@synthesize officeContentTen;
@synthesize officeContentEleven;
@synthesize officeContentTwelve;
@synthesize auditSeatContent;
@synthesize multiSeatContentOne;
@synthesize multiSeatContentTwo;
@synthesize multiSeatContentThree;
@synthesize educationalContent;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // Take note that you need to take ownership of the ViewController that is being presented
    
    /*
    // You can optionally listen to notifications
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(semiModalPresented:)
                                                 name:kSemiModalDidShowNotification
                                               object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(semiModalDismissed:)
                                                 name:kSemiModalDidHideNotification
                                               object:nil];
     */
    
    isOffice = NO;
    isHospital = NO;
    isPublicArea = NO;
    isAboutUs = YES;
    isMultSeat = NO;
    isAuditSeat = NO;
    isEducInst = NO;
    
    [_btnEmail addTarget:self action:@selector(sendEmailAction:) forControlEvents:UIControlEventTouchUpInside];
    [_btnOffice setBackgroundImage:[[UIImage alloc] init] forState:UIControlStateNormal];
    [_btnHospital setBackgroundImage:[[UIImage alloc] init] forState:UIControlStateNormal];
    [_btnPublicArea setBackgroundImage:[[UIImage alloc] init] forState:UIControlStateNormal];
    [_btnAboutUs setBackgroundImage:[[UIImage alloc] init] forState:UIControlStateNormal];
    [_btnAuditoriumSeating setBackgroundImage:[[UIImage alloc] init] forState:UIControlStateNormal];
    [_btnMultipurposeSeating setBackgroundImage:[[UIImage alloc] init] forState:UIControlStateNormal];
    [_btnEducationalInstitutional setBackgroundImage:[[UIImage alloc] init] forState:UIControlStateNormal];
    
    self.aboutContent = [[[NSMutableArray alloc]initWithObjects:@"profil1",@"profil2",@"profil3",@"profil4",@"profil5",@"profil6",@"profil7",@"profil8",@"profil9",@"profil10",@"profil11",@"profil12",@"profil13",@"profil14",@"profil15",@"profil16",@"profil17",@"profil18",@"profil19",@"profil20",@"profil21",@"profil22",@"profil23",@"profil24",@"profil25",@"profil26",@"profil27",@"profil28",@"profil29",@"profil30",@"profil31",@"profil32",@"profil33",@"profil34",@"profil35",@"profil36",@"profil37",@"profil38",@"profil39",@"profil40",@"profil41",@"profil42",@"profil43",@"profil44",@"profil45",@"profil46",@"profil47",@"profil48",@"profil49",@"profil50", nil]autorelease];
    
    self.hospitalContentOne = [[[NSMutableArray alloc] initWithObjects:@"Hospitality3",@"Hospitality4",@"Hospitality5",@"Hospitality6",@"Hospitality7",@"Hospitality8",@"Hospitality9",@"Hospitality10",@"Hospitality11",@"Hospitality12",@"Hospitality13",@"Hospitality14",@"Hospitality15",@"Hospitality16",@"Hospitality17",@"Hospitality18",@"Hospitality19",@"Hospitality20",@"Hospitality21",@"Hospitality22",@"Hospitality23",@"Hospitality24",@"Hospitality25",@"Hospitality26",@"Hospitality27",@"Hospitality28",@"Hospitality29",@"Hospitality30",@"Hospitality31",@"Hospitality32",@"Hospitality33",@"Hospitality34",@"Hospitality35",@"Hospitality36",@"Hospitality37",@"Hospitality38",@"Hospitality39",@"Hospitality40",@"Hospitality41",@"Hospitality42",@"Hospitality43",@"Hospitality44",@"Hospitality45",@"Hospitality46",@"Hospitality47",@"Hospitality48",@"Hospitality49",@"Hospitality50",@"Hospitality51",@"Hospitality52",@"Hospitality53",@"Hospitality54",@"Hospitality55",@"Hospitality56",@"Hospitality57",@"Hospitality58",@"Hospitality59",@"Hospitality60", nil]autorelease];
    self.hospitalContentTwo = [[[NSMutableArray alloc] initWithObjects:@"Crissan1",@"Crissan2", nil]autorelease];
    self.hospitalContentThree = [[[NSMutableArray alloc] initWithObjects:@"Wilkhahn1",@"Wilkhahn2",@"Wilkhahn3", nil]autorelease];
    
    self.publicAreaContentTwo = [[[NSMutableArray alloc] initWithObjects:@"Crissan1",@"Crissan2", nil]autorelease];
    self.publicAreaContentOne = [[[NSMutableArray alloc] initWithObjects:@"MagnusPage1",@"MagnusPage2",@"MagnusPage3", nil]autorelease];
    self.publicAreaContentThree = [[[NSMutableArray alloc] initWithObjects:@"Wilkhahn1",@"Wilkhahn2",@"Wilkhahn3", nil]autorelease];
    self.publicAreaContentFour = [[[NSMutableArray alloc] initWithObjects:@"Cubic_Page_1",@"Cubic_Page_2",@"Cubic_Page_3", nil]autorelease];
    
    self.officeContentOne = [[[NSMutableArray alloc] initWithObjects:@"Breeza1",@"Breeza2",@"Breeza3", nil]autorelease];
    self.officeContentTwo = [[[NSMutableArray alloc] initWithObjects:@"Java1",@"Java2",@"Java3", nil]autorelease];
    self.officeContentEight = [[[NSMutableArray alloc] initWithObjects:@"Nixie1",@"Nixie2",@"Nixie3", nil]autorelease];
    self.officeContentThree = [[[NSMutableArray alloc] initWithObjects:@"Lattice1",@"Lattice2",@"Lattice3",@"Lattice4",@"Lattice5",@"Lattice6",@"Lattice7", nil]autorelease];
    self.officeContentFour = [[[NSMutableArray alloc] initWithObjects:@"Marfis_Page_1",@"Marfis_Page_2",@"Marfis_Page_3",@"Marfis_Page_4",@"Marfis_Page_5",@"Marfis_Page_6",@"Marfis_Page_7", nil]autorelease];
    self.officeContentFive = [[[NSMutableArray alloc] initWithObjects:@"Minima1",@"Minima2",@"Minima3",@"Minima4",@"Minima5",@"Minima6",@"Minima7",@"Minima8",@"Minima9",@"Minima10",@"Minima11", nil]autorelease];
    self.officeContentSix = [[[NSMutableArray alloc] initWithObjects:@"Nexus1",@"Nexus2",@"Nexus3",@"Nexus4",@"Nexus5",@"Nexus6",@"Nexus7",@"Nexus8",@"Nexus9",@"Nexus10",@"Nexus11", nil]autorelease];
    self.officeContentNine = [[[NSMutableArray alloc] initWithObjects:@"Orgafile1",@"Orgafile2",@"Orgafile3",@"Orgafile4",@"Orgafile5",@"Orgafile6",@"Orgafile7", nil]autorelease];
    self.officeContentSeven = [[[NSMutableArray alloc] initWithObjects:@"Oblique1",@"Oblique2",@"Oblique3",@"Oblique4",@"Oblique5",@"Oblique6", nil]autorelease];
    self.officeContentTen = [[[NSMutableArray alloc] initWithObjects:@"WorkX1",@"WorkX2",@"WorkX3",@"WorkX4",@"WorkX5",@"WorkX6",@"WorkX7",@"WorkX8",@"WorkX9",@"WorkX10",@"WorkX11", nil]autorelease];
    self.officeContentEleven = [[[NSMutableArray alloc] initWithObjects:@"WorkX-21",@"WorkX-22",@"WorkX-23",@"WorkX-24",@"WorkX-25", nil]autorelease];
    self.officeContentTwelve = [[[NSMutableArray alloc] initWithObjects:@"WorkX-31",@"WorkX-32",@"WorkX-33",@"WorkX-34",@"WorkX-35",@"WorkX-36",@"WorkX-37",@"WorkX-38",@"WorkX-39",@"WorkX-310",@"WorkX-311",@"WorkX-312",@"WorkX-313",@"WorkX-314", nil]autorelease];
    
    self.auditSeatContent = [[[NSMutableArray alloc] initWithObjects:@"Votum1",@"Votum2",@"Votum3", nil]autorelease];
    
    self.multiSeatContentOne = [[[NSMutableArray alloc] initWithObjects:@"Summit1",@"Summit2",@"Summit3",@"Summit4",@"Summit5",@"Summit6",@"Summit7", nil]autorelease];
    self.multiSeatContentTwo = [[[NSMutableArray alloc] initWithObjects:@"Venom1",@"Venom2",@"Venom3", nil]autorelease];
    self.multiSeatContentThree = [[[NSMutableArray alloc] initWithObjects:@"DavidRowland1",@"DavidRowland2",@"DavidRowland3",@"DavidRowland4",@"DavidRowland5",@"DavidRowland6",@"DavidRowland7", nil]autorelease];
    
    self.educationalContent = [[[NSMutableArray alloc]initWithObjects:@"educational1",@"educational2",@"educational3",@"educational4",@"educational5",@"educational6",@"educational7",@"educational8",@"educational9",@"educational10",@"educational11",@"educational12",@"educational13",@"educational14",@"educational15",@"educational16",@"educational17",@"educational18",@"educational19",@"educational20",@"educational21",@"educational22",@"educational23",@"educational24",@"educational25",@"educational26",@"educational27",@"educational28",@"educational29",@"educational30",@"educational31",@"educational32",@"educational33",@"educational34", nil]autorelease];
    
    _tableViewS = [[[UITableView alloc] init]autorelease];
    _tableViewS.delegate = self;
    _tableViewS.dataSource = self;
    _tableViewS.separatorStyle = UITableViewCellSeparatorStyleNone;
    _tableViewS.backgroundColor = [UIColor clearColor];
    _tableViewS.pagingEnabled = YES;
    
    //configure swipe view
    _swipeView.pagingEnabled = YES;

    _tableViewS.frame = CGRectMake(0, 0, 320, _swipeView.frame.size.height);

}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES animated:YES];

    [_swipeView reloadData];
    [_tableViewS reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc
{
    _swipeView.delegate = nil;
    _swipeView.dataSource = nil;
    [super dealloc];
}

- (NSUInteger)supportedInterfaceOrientations{
    
    [[UIDevice currentDevice] beginGeneratingDeviceOrientationNotifications];
    [[NSNotificationCenter defaultCenter]
     addObserver:self selector:@selector(orientationChanged:)
     name:UIDeviceOrientationDidChangeNotification
     object:[UIDevice currentDevice]];
    
    if (isAboutUs) {
        return UIInterfaceOrientationMaskPortrait + UIInterfaceOrientationMaskLandscape;
    }
    else{
        return UIInterfaceOrientationMaskPortrait;
    }
}

- (void)orientationChanged:(NSNotification *)note
{
    UIDevice *device = note.object;
    switch(device.orientation)//do whatever you want in each orientation
    {
        case UIDeviceOrientationPortrait:
            //NSLog(@"portrait");
            isPortrait = YES;
            isLandscape = NO;
            _btnMenu.frame = CGRectMake(_swipeView.frame.size.width/2.2, _btnMenu.frame.origin.y, _btnMenu.frame.size.width, _btnMenu.frame.size.height);

            break;
        case UIDeviceOrientationPortraitUpsideDown:
            //NSLog(@"up side down");
            break;
        case UIDeviceOrientationLandscapeLeft:
            isLandscape = YES;
            isPortrait = NO;
            _btnMenu.frame = CGRectMake(_swipeView.frame.size.width/2.1, _btnMenu.frame.origin.y, _btnMenu.frame.size.width, _btnMenu.frame.size.height);

            break;
        case UIDeviceOrientationLandscapeRight:
            isLandscape = YES;
            isPortrait = NO;
            _btnMenu.frame = CGRectMake(_swipeView.frame.size.width/2.1, _btnMenu.frame.origin.y, _btnMenu.frame.size.width, _btnMenu.frame.size.height);
            break;
        default:
            break;
    };
}

- (void)viewWillLayoutSubviews{
    //NSLog(@"panjang x lebar = %f x %f", _tableViewS.frame.size.width, _tableViewS.frame.size.height);
    _tableViewS.frame = CGRectMake(0, 0, _swipeView.frame.size.width, _swipeView.frame.size.height);
    [_tableViewS reloadData];
}

- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation
{
    [_tableViewS reloadData];
}

# pragma mark -
# pragma mark - UIButton Delegate

- (void)sendEmailAction:(UIButton *)sender{
    // From within your active view controller
    if ([MFMailComposeViewController canSendMail])
    {
        MFMailComposeViewController *mail = [[MFMailComposeViewController alloc] init];
        mail.mailComposeDelegate = self;
        [mail setSubject:@"Sample Subject"];
        [mail setMessageBody:@"Here is some main text in the email!" isHTML:NO];
        [mail setToRecipients:@[@"testingEmail@example.com"]];
        
        [self presentViewController:mail animated:YES completion:NULL];
    }
    else
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Message" message:@"This device cannot send email, please check your email configuration at setting." delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
        [alert show];
        [alert release];
    }
}

- (IBAction)buttonDidTouch:(id)sender {
    
    [self.view addSubview:self.viewMenu];
    
    if (isPortrait) {
        CGRect rect = self.viewMenu.frame;
        rect.origin.y = self.view.frame.size.height;
        self.viewMenu.frame = rect;
        [UIView beginAnimations:@"ShowView" context:nil];
        [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
        [UIView setAnimationDuration:0.5];
        rect.origin.y = self.view.frame.size.height - 115;
        rect.size.width = _swipeView.frame.size.width;
        self.viewMenu.frame = rect;
        
    }
    else if (isLandscape){
        CGRect rect = self.viewMenu.frame;
        rect.origin.y = self.view.frame.size.height;
        self.viewMenu.frame = rect;
        [UIView beginAnimations:@"ShowView" context:nil];
        [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
        [UIView setAnimationDuration:0.5];
        rect.origin.y = self.view.frame.size.height - 115;
        rect.size.width = _swipeView.frame.size.width;
        self.viewMenu.frame = rect;
    }
    
    [_btnAboutUs addTarget:self action:@selector(dismissButtonDidTouch:) forControlEvents:UIControlEventTouchUpInside];
    [_btnHospital addTarget:self action:@selector(dismissButtonDidTouch:) forControlEvents:UIControlEventTouchUpInside];
    [_btnPublicArea addTarget:self action:@selector(dismissButtonDidTouch:) forControlEvents:UIControlEventTouchUpInside];
    [_btnOffice addTarget:self action:@selector(dismissButtonDidTouch:) forControlEvents:UIControlEventTouchUpInside];
    [_btnAuditoriumSeating addTarget:self action:@selector(dismissButtonDidTouch:) forControlEvents:UIControlEventTouchUpInside];
    [_btnMultipurposeSeating addTarget:self action:@selector(dismissButtonDidTouch:) forControlEvents:UIControlEventTouchUpInside];
    [_btnEducationalInstitutional addTarget:self action:@selector(dismissButtonDidTouch:) forControlEvents:UIControlEventTouchUpInside];
    
    [_dismissButton addTarget:self action:@selector(dismissButtonDidTouch:) forControlEvents:UIControlEventTouchUpInside];
    
    [UIView commitAnimations];    
}

- (void)dismissButtonDidTouch:(UIButton *)sender {
    
    //NSLog(@"button tag = %ld", (long)sender.tag);
    CGRect rect = self.viewMenu.frame;
    [UIView beginAnimations:@"HideView" context:nil];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    [UIView setAnimationDuration:0.5];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDidStopSelector:@selector(animationDidStop:finished:context:)];
    rect.origin.y = self.view.frame.size.height;
    self.viewMenu.frame = rect;
    [UIView commitAnimations];
    
    if (sender.tag == 1) {
        isOffice = YES;
        isHospital = NO;
        isPublicArea = NO;
        isAboutUs = NO;
        isMultSeat = NO;
        isAuditSeat = NO;
        isEducInst = NO;
    }
    else if (sender.tag == 2) {
        isOffice = NO;
        isHospital = YES;
        isPublicArea = NO;
        isAboutUs = NO;
        isMultSeat = NO;
        isAuditSeat = NO;
        isEducInst = NO;
    }
    else if (sender.tag == 3) {
        isOffice = NO;
        isHospital = NO;
        isPublicArea = YES;
        isAboutUs = NO;
        isMultSeat = NO;
        isAuditSeat = NO;
        isEducInst = NO;
    }
    else if (sender.tag == 4) {
        isOffice = NO;
        isHospital = NO;
        isPublicArea = NO;
        isAboutUs = YES;
        isMultSeat = NO;
        isAuditSeat = NO;
        isEducInst = NO;
    }
    else if (sender.tag == 5) {
        isOffice = NO;
        isHospital = NO;
        isPublicArea = NO;
        isAboutUs = NO;
        isMultSeat = NO;
        isAuditSeat = YES;
        isEducInst = NO;
    }
    else if (sender.tag == 6) {
        isOffice = NO;
        isHospital = NO;
        isPublicArea = NO;
        isAboutUs = NO;
        isMultSeat = YES;
        isAuditSeat = NO;
        isEducInst = NO;
    }
    else if (sender.tag == 7) {
        isOffice = NO;
        isHospital = NO;
        isPublicArea = NO;
        isAboutUs = NO;
        isMultSeat = NO;
        isAuditSeat = NO;
        isEducInst = NO;
    }
    else if (sender.tag == 8) {
        isOffice = NO;
        isHospital = NO;
        isPublicArea = NO;
        isAboutUs = NO;
        isMultSeat = NO;
        isAuditSeat = NO;
        isEducInst = YES;
    }
    
    [_swipeView reloadData];
    [_tableViewS reloadData];
    
}

- (void)animationDidStop:(NSString *)animationID finished:(NSNumber *)finished context:(void *)context{
    [self.viewMenu removeFromSuperview];
}

# pragma mark -
# pragma mark - MFMailComposeController delegate

- (void)mailComposeController:(MFMailComposeViewController*)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error
{
    switch (result)
    {
        case MFMailComposeResultCancelled:
            //NSLog(@"Mail cancelled: you cancelled the operation and no email message was queued");
            break;
        case MFMailComposeResultSaved:
            //NSLog(@"Mail saved: you saved the email message in the Drafts folder");
            break;
        case MFMailComposeResultSent:
            //NSLog(@"Mail send: the email message is queued in the outbox. It is ready to send the next time the user connects to email");
            break;
        case MFMailComposeResultFailed:
            //NSLog(@"Mail failed: the email message was nog saved or queued, possibly due to an error");
            break;
        default:
            //NSLog(@"Mail not sent");
            break;
    }
    [controller dismissViewControllerAnimated:YES completion:nil];
}


#pragma mark - Optional notifications

- (void)semiModalPresented:(NSNotification *) notification {
    if (notification.object == self) {
        //NSLog(@"This view controller just shown a view with semi modal annimation");
    }
}
- (void)semiModalDismissed:(NSNotification *) notification {
    if (notification.object == self) {
        //NSLog(@"A view controller was dismissed with semi modal annimation");
    }
}

# pragma mark -
# pragma mark - SwipeView Delegate

- (NSInteger)numberOfItemsInSwipeView:(SwipeView *)swipeView
{
    if (isAboutUs) {
        return 1;
    }
    else if (isOffice){
        return 12;
    }
    else if (isHospital){
        return 3;
    }
    else if (isPublicArea){
        return 4;
    }
    else if (isAuditSeat){
        return 1;
    }
    else if (isMultSeat){
        return 3;
    }
    else if (isEducInst){
        return 1;
    }
    else
        return 1;
}

- (void)swipeViewCurrentItemIndexDidChange:(SwipeView *)swipeView{
    _flag = swipeView.currentItemIndex;
    
    [_tableViewS reloadData];
}

- (UIView *)swipeView:(SwipeView *)swipeView viewForItemAtIndex:(NSInteger)index reusingView:(UIView *)view
{
    
    if (view == nil)
    {
        //don't do anything specific to the index within
        //this `if (view == nil) {...}` statement because the view will be
        //recycled and used with other index values later
        view = [[[UIView alloc] initWithFrame:_swipeView.bounds]autorelease];
        view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        
        _tableViewS.tag = 1;
        
        [view addSubview:_tableViewS];
        
        if (_flag == index) {
            [_tableViewS scrollRectToVisible:CGRectMake(0, 0, 1, 1) animated:YES];
        }
        else{
        
        }
    }
    else
    {
        //get a reference to the label in the recycled view
        _tableViewS = (UITableView *)[view viewWithTag:1];
    }
    
    return view;
}



# pragma mark -
# pragma mark - TableView Datasource and Delegate

- (NSInteger)numberOfSectionsInTableView:(UITableView *)atableView {
    return 1;
}

- (NSInteger) tableView:(UITableView *)atableView numberOfRowsInSection:(NSInteger)section
{
    if (isAboutUs) {
        return self.aboutContent.count;
    }
    else if (isHospital){
        if (_flag == 0) {
            return self.hospitalContentOne.count;
        }
        else if (_flag == 1){
            return self.hospitalContentTwo.count;
        }
        else
            return self.hospitalContentThree.count;
    }
    else if (isPublicArea){
        if (_flag == 0) {
            return self.publicAreaContentOne.count;
        }
        else if (_flag == 1){
            return self.publicAreaContentTwo.count;
        }
        else if (_flag == 2){
            return self.publicAreaContentThree.count;
        }
        else{
            return self.publicAreaContentFour.count;
        }
    }
    else if (isOffice){
        if (_flag == 0) {
            return self.officeContentOne.count;
        }
        else if (_flag == 1){
            return  self.officeContentTwo.count;
        }
        else if (_flag == 2){
            return self.officeContentThree.count;
        }
        else if (_flag == 3){
            return self.officeContentFour.count;
        }
        else if (_flag == 4){
            return self.officeContentFive.count;
        }
        else if (_flag == 5){
            return self.officeContentSix.count;
        }
        else if (_flag == 6){
            return self.officeContentSeven.count;
        }
        else if (_flag == 7){
            return self.officeContentEight.count;
        }
        else if (_flag == 8){
            return self.officeContentNine.count;
        }
        else if (_flag == 9){
            return self.officeContentTen.count;
        }
        else if (_flag == 10){
            return self.officeContentEleven.count;
        }
        else
            return self.officeContentTwelve.count;
    }
    else if (isAuditSeat){
        return self.auditSeatContent.count;
    }
    else if (isMultSeat){
        if (_flag == 0) {
            return self.multiSeatContentOne.count;
        }
        else if (_flag == 1){
            return self.multiSeatContentTwo.count;
        }
        else
            return self.multiSeatContentThree.count;
    }
    else if (isEducInst){
        return self.educationalContent.count;
    }
    else
        return self.aboutContent.count;
}

- (CGFloat) tableView:(UITableView *)atableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (isAboutUs) {
        return 205;
    }
    else if (isHospital){
        return 480;
    }
    else if (isPublicArea){
        return 480;
    }
    else if (isOffice){
        return 480;
    }
    else if (isAuditSeat){
        return 480;
    }
    else if (isMultSeat){
        return 480;
    }
    else if (isEducInst){
        return 480;
    }
    else
        return 480;
}

- (UITableViewCell *)tableView:(UITableView *)atableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (isAboutUs) {
        
        if (isPortrait) {
            static NSString *filteredCell = @"AboutUsCell";
            
            AboutUsCell *cell = (AboutUsCell *)[atableView dequeueReusableCellWithIdentifier:filteredCell];
            if (cell == nil) {
                [[NSBundle mainBundle] loadNibNamed:@"AboutUsCell" owner:self options:nil];
                cell = [aboutUsCell autorelease];
                aboutUsCell = nil;
                
                cell.selectionStyle = UITableViewCellSelectionStyleNone;
                
            }
            
            cell.imageContent.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@",[self.aboutContent objectAtIndex:indexPath.row]]];
            cell.imageContent.contentMode = UIViewContentModeScaleToFill;
            
            return cell;
        }
        else{
            static NSString *filteredCell = @"AboutUsLandscapeCell";
            
            AboutUsLandscapeCell *cell = (AboutUsLandscapeCell *)[atableView dequeueReusableCellWithIdentifier:filteredCell];
            if (cell == nil) {
                [[NSBundle mainBundle] loadNibNamed:@"AboutUsLandscapeCell" owner:self options:nil];
                cell = [aboutUsLandscapeCell autorelease];
                aboutUsLandscapeCell = nil;
                
                cell.selectionStyle = UITableViewCellSelectionStyleNone;
            }
            
            cell.imageContent.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@",[self.aboutContent objectAtIndex:indexPath.row]]];
            cell.imageContent.contentMode = UIViewContentModeScaleAspectFit;
            
            return cell;

        }
    }
    else if (isHospital){
        static NSString *filteredCell = @"HospitalCell";
        
        HospitalCell *cell = (HospitalCell *)[atableView dequeueReusableCellWithIdentifier:filteredCell];
        if (cell == nil) {
            [[NSBundle mainBundle] loadNibNamed:@"HospitalCell" owner:self options:nil];
            cell = [hospitalCell autorelease];
            hospitalCell = nil;
            
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
        }
        
        [cell.btnDetail setHidden:YES];
        
        if (_flag == 0) {
            cell.imageContent.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@",[self.hospitalContentOne objectAtIndex:indexPath.row]]];
        }
        else if (_flag == 1){
            cell.imageContent.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@",[self.hospitalContentTwo objectAtIndex:indexPath.row]]];
        }
        else{
            cell.imageContent.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@",[self.hospitalContentThree objectAtIndex:indexPath.row]]];
        }
        
        cell.imageContent.contentMode = UIViewContentModeScaleToFill;
        
        return cell;
    }
    else if (isPublicArea){
        static NSString *filteredCell = @"HospitalCell";
        
        HospitalCell *cell = (HospitalCell *)[atableView dequeueReusableCellWithIdentifier:filteredCell];
        if (cell == nil) {
            [[NSBundle mainBundle] loadNibNamed:@"HospitalCell" owner:self options:nil];
            cell = [hospitalCell autorelease];
            hospitalCell = nil;
            
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
        }
        
        [cell.btnDetail setHidden:YES];
        
        if (_flag == 0) {
            cell.imageContent.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@",[self.publicAreaContentOne objectAtIndex:indexPath.row]]];
        }
        else{
            cell.imageContent.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@",[self.publicAreaContentTwo objectAtIndex:indexPath.row]]];
        }
        
        cell.imageContent.contentMode = UIViewContentModeScaleToFill;
        
        return cell;
    }
    else if (isOffice){
        static NSString *filteredCell = @"HospitalCell";
        
        HospitalCell *cell = (HospitalCell *)[atableView dequeueReusableCellWithIdentifier:filteredCell];
        if (cell == nil) {
            [[NSBundle mainBundle] loadNibNamed:@"HospitalCell" owner:self options:nil];
            cell = [hospitalCell autorelease];
            hospitalCell = nil;
            
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
        }
        
        [cell.btnDetail addTarget:self action:@selector(bigButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
        cell.btnDetail.tag = _flag;
        
        [cell.btnDetail setHidden:YES];
        
        CGSize newSize = CGSizeMake(250.0f, 300.0f);
        
        if (_flag == 0) {
            
            UIGraphicsBeginImageContext(newSize);
            [[UIImage imageNamed:[NSString stringWithFormat:@"%@",[self.officeContentOne objectAtIndex:indexPath.row]]] drawInRect:CGRectMake(0,0,newSize.width,newSize.height)];
            UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
            UIGraphicsEndImageContext();
            //NSData *image_Data=UIImageJPEGRepresentation([UIImage imageNamed:[NSString stringWithFormat:@"%@",[self.officeContentOne objectAtIndex:indexPath.row]]],0.8);
            cell.imageContent.image = newImage;
            if (indexPath.row == 1) {
                [cell.btnDetail setHidden:NO];
            }
            else
                [cell.btnDetail setHidden:YES];
        }
        else if (_flag == 1){
            UIGraphicsBeginImageContext(newSize);
            [[UIImage imageNamed:[NSString stringWithFormat:@"%@",[self.officeContentTwo objectAtIndex:indexPath.row]]] drawInRect:CGRectMake(0,0,newSize.width,newSize.height)];
            UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
            UIGraphicsEndImageContext();

            //NSData *image_Data=UIImageJPEGRepresentation([UIImage imageNamed:[NSString stringWithFormat:@"%@",[self.officeContentTwo objectAtIndex:indexPath.row]]],0.8);
            cell.imageContent.image = newImage;
            if (indexPath.row == 1) {
                [cell.btnDetail setHidden:NO];
            }
            else
                [cell.btnDetail setHidden:YES];
        }
        else if (_flag == 2){
            UIGraphicsBeginImageContext(newSize);
            [[UIImage imageNamed:[NSString stringWithFormat:@"%@",[self.officeContentThree objectAtIndex:indexPath.row]]] drawInRect:CGRectMake(0,0,newSize.width,newSize.height)];
            UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
            UIGraphicsEndImageContext();

            //NSData *image_Data=UIImageJPEGRepresentation([UIImage imageNamed:[NSString stringWithFormat:@"%@",[self.officeContentThree objectAtIndex:indexPath.row]]],0.8);
            cell.imageContent.image = newImage;
        }
        else if (_flag == 3){
            UIGraphicsBeginImageContext(newSize);
            [[UIImage imageNamed:[NSString stringWithFormat:@"%@",[self.officeContentFour objectAtIndex:indexPath.row]]] drawInRect:CGRectMake(0,0,newSize.width,newSize.height)];

            UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
            UIGraphicsEndImageContext();

            //NSData *image_Data=UIImageJPEGRepresentation([UIImage imageNamed:[NSString stringWithFormat:@"%@",[self.officeContentFour objectAtIndex:indexPath.row]]],0.8);
            cell.imageContent.image = newImage;
        }
        else if (_flag == 4){
            UIGraphicsBeginImageContext(newSize);
            [[UIImage imageNamed:[NSString stringWithFormat:@"%@",[self.officeContentFive objectAtIndex:indexPath.row]]] drawInRect:CGRectMake(0,0,newSize.width,newSize.height)];

            UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
            UIGraphicsEndImageContext();

            //NSData *image_Data=UIImageJPEGRepresentation([UIImage imageNamed:[NSString stringWithFormat:@"%@",[self.officeContentFive objectAtIndex:indexPath.row]]],0.8);
            cell.imageContent.image = newImage;
        }
        else if (_flag == 5){
            UIGraphicsBeginImageContext(newSize);
            [[UIImage imageNamed:[NSString stringWithFormat:@"%@",[self.officeContentSix objectAtIndex:indexPath.row]]] drawInRect:CGRectMake(0,0,newSize.width,newSize.height)];

            UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
            UIGraphicsEndImageContext();

            //NSData *image_Data=UIImageJPEGRepresentation([UIImage imageNamed:[NSString stringWithFormat:@"%@",[self.officeContentSix objectAtIndex:indexPath.row]]],0.8);
            cell.imageContent.image = newImage;
        }
        else if (_flag == 6){
            UIGraphicsBeginImageContext(newSize);
            [[UIImage imageNamed:[NSString stringWithFormat:@"%@",[self.officeContentSeven objectAtIndex:indexPath.row]]] drawInRect:CGRectMake(0,0,newSize.width,newSize.height)];

            UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
            UIGraphicsEndImageContext();

            //NSData *image_Data=UIImageJPEGRepresentation([UIImage imageNamed:[NSString stringWithFormat:@"%@",[self.officeContentSeven objectAtIndex:indexPath.row]]],0.8);
            cell.imageContent.image = newImage;
        }
        else if (_flag == 7){
            UIGraphicsBeginImageContext(newSize);
            [[UIImage imageNamed:[NSString stringWithFormat:@"%@",[self.officeContentEight objectAtIndex:indexPath.row]]] drawInRect:CGRectMake(0,0,newSize.width,newSize.height)];

            UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
            UIGraphicsEndImageContext();

            //NSData *image_Data=UIImageJPEGRepresentation([UIImage imageNamed:[NSString stringWithFormat:@"%@",[self.officeContentEight objectAtIndex:indexPath.row]]],0.8);
            cell.imageContent.image = newImage;
            if (indexPath.row == 1) {
                [cell.btnDetail setHidden:NO];
            }
            else
                [cell.btnDetail setHidden:YES];
        }
        else if (_flag == 8){
            UIGraphicsBeginImageContext(newSize);
            [[UIImage imageNamed:[NSString stringWithFormat:@"%@",[self.officeContentNine objectAtIndex:indexPath.row]]] drawInRect:CGRectMake(0,0,newSize.width,newSize.height)];

            UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
            UIGraphicsEndImageContext();

           //NSData *image_Data=UIImageJPEGRepresentation([UIImage imageNamed:[NSString stringWithFormat:@"%@",[self.officeContentNine objectAtIndex:indexPath.row]]],0.8);
            cell.imageContent.image = newImage;
        }
        else if (_flag == 9){
            UIGraphicsBeginImageContext(newSize);
            [[UIImage imageNamed:[NSString stringWithFormat:@"%@",[self.officeContentTen objectAtIndex:indexPath.row]]] drawInRect:CGRectMake(0,0,newSize.width,newSize.height)];

            UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
            UIGraphicsEndImageContext();

            //NSData *image_Data=UIImageJPEGRepresentation([UIImage imageNamed:[NSString stringWithFormat:@"%@",[self.officeContentTen objectAtIndex:indexPath.row]]],0.8);
            cell.imageContent.image = newImage;
        }
        else if (_flag == 10){
            UIGraphicsBeginImageContext(newSize);
            [[UIImage imageNamed:[NSString stringWithFormat:@"%@",[self.officeContentEleven objectAtIndex:indexPath.row]]] drawInRect:CGRectMake(0,0,newSize.width,newSize.height)];

            UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
            UIGraphicsEndImageContext();

            //NSData *image_Data=UIImageJPEGRepresentation([UIImage imageNamed:[NSString stringWithFormat:@"%@",[self.officeContentEleven objectAtIndex:indexPath.row]]],0.8);
            cell.imageContent.image = newImage;
        }
        else{
            UIGraphicsBeginImageContext(newSize);
            [[UIImage imageNamed:[NSString stringWithFormat:@"%@",[self.officeContentTwelve objectAtIndex:indexPath.row]]] drawInRect:CGRectMake(0,0,newSize.width,newSize.height)];

            UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
            UIGraphicsEndImageContext();

            //NSData *image_Data=UIImageJPEGRepresentation([UIImage imageNamed:[NSString stringWithFormat:@"%@",[self.officeContentTwelve objectAtIndex:indexPath.row]]],0.8);
            cell.imageContent.image = newImage;
        }
            
        cell.imageContent.contentMode = UIViewContentModeScaleAspectFit;
        
        return cell;
    }
    else if (isAuditSeat){
        static NSString *filteredCell = @"HospitalCell";
        
        HospitalCell *cell = (HospitalCell *)[atableView dequeueReusableCellWithIdentifier:filteredCell];
        if (cell == nil) {
            [[NSBundle mainBundle] loadNibNamed:@"HospitalCell" owner:self options:nil];
            cell = [hospitalCell autorelease];
            hospitalCell = nil;
            
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
        }
        
        [cell.btnDetail setHidden:YES];
        
        cell.imageContent.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@",[self.auditSeatContent objectAtIndex:indexPath.row]]];
        
        cell.imageContent.contentMode = UIViewContentModeScaleToFill;
        
        return cell;
    }
    else if (isMultSeat){
        static NSString *filteredCell = @"HospitalCell";
        
        HospitalCell *cell = (HospitalCell *)[atableView dequeueReusableCellWithIdentifier:filteredCell];
        if (cell == nil) {
            [[NSBundle mainBundle] loadNibNamed:@"HospitalCell" owner:self options:nil];
            cell = [hospitalCell autorelease];
            hospitalCell = nil;
            
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
        }
        
        [cell.btnDetail setHidden:YES];
        
        if (_flag == 0) {
            cell.imageContent.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@",[self.multiSeatContentOne objectAtIndex:indexPath.row]]];
        }
        else if (_flag == 1){
            cell.imageContent.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@",[self.multiSeatContentTwo objectAtIndex:indexPath.row]]];
        }
        else{
            cell.imageContent.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@",[self.multiSeatContentThree objectAtIndex:indexPath.row]]];
        }
        
        cell.imageContent.contentMode = UIViewContentModeScaleToFill;
        
        return cell;
    }
    else if (isEducInst){
        static NSString *filteredCell = @"HospitalCell";
        
        HospitalCell *cell = (HospitalCell *)[atableView dequeueReusableCellWithIdentifier:filteredCell];
        if (cell == nil) {
            [[NSBundle mainBundle] loadNibNamed:@"HospitalCell" owner:self options:nil];
            cell = [hospitalCell autorelease];
            hospitalCell = nil;
            
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
        }
        
        [cell.btnDetail setHidden:YES];
        
        cell.imageContent.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@",[self.educationalContent objectAtIndex:indexPath.row]]];
        cell.imageContent.contentMode = UIViewContentModeScaleToFill;
        
        return cell;
    }
    else{
        static NSString *filteredCell = @"AboutUsCell";
        
        AboutUsCell *cell = (AboutUsCell *)[atableView dequeueReusableCellWithIdentifier:filteredCell];
        if (cell == nil) {
            [[NSBundle mainBundle] loadNibNamed:@"AboutUsCell" owner:self options:nil];
            cell = [aboutUsCell autorelease];
            aboutUsCell = nil;
            
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
        }
        
        cell.imageContent.image = [UIImage imageNamed:[NSString stringWithFormat:@"%@",[self.aboutContent objectAtIndex:indexPath.row]]];
        cell.imageContent.contentMode = UIViewContentModeScaleToFill;
        
        return cell;
    }
}

- (void)bigButtonTapped:(UIButton *)sender {
    
    // Create image info
    JTSImageInfo *imageInfo = [[JTSImageInfo alloc] init];
    
    if (sender.tag == 0) {
        imageInfo.image = [UIImage imageNamed:@"chair-breeza1.png"];
    }
    else if (sender.tag == 1){
        imageInfo.image = [UIImage imageNamed:@"chair-java1.png"];
    }
    else if (sender.tag == 7){
        imageInfo.image = [UIImage imageNamed:@"chair-nixie1.png"];
    }
    
    //imageInfo.referenceRect = self.bigImageButton.frame;
    //imageInfo.referenceView = self.bigImageButton.superview;
    imageInfo.referenceContentMode = UIViewContentModeScaleAspectFit;
    //imageInfo.referenceCornerRadius = self.bigImageButton.layer.cornerRadius;
    
    // Setup view controller
    JTSImageViewController *imageViewer = [[JTSImageViewController alloc]
                                           initWithImageInfo:imageInfo
                                           mode:JTSImageViewControllerMode_Image
                                           backgroundStyle:JTSImageViewControllerBackgroundOption_Scaled];
    
    // Present the view controller.
    [imageViewer showFromViewController:self transition:JTSImageViewControllerTransition_FromOriginalPosition];
}

- (void)scrollViewWillEndDragging:(UIScrollView *)scrollView
                     withVelocity:(CGPoint)velocity
              targetContentOffset:(inout CGPoint *)targetContentOffset
{
    UITableView *tv = (UITableView*)scrollView;
    NSIndexPath *indexPathOfTopRowAfterScrolling = [tv indexPathForRowAtPoint:
                                                    *targetContentOffset
                                                    ];
    CGRect rectForTopRowAfterScrolling = [tv rectForRowAtIndexPath:
                                          indexPathOfTopRowAfterScrolling
                                          ];
    targetContentOffset->y=rectForTopRowAfterScrolling.origin.y;
}

@end
