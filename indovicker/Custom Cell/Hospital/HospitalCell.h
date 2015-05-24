//
//  HospitalCell.h
//  indovicker
//
//  Created by Zein Rezky Chandra on 4/29/15.
//  Copyright (c) 2015 Crocodic Indonesia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HospitalCell : UITableViewCell{
    IBOutlet UIImageView *imageContent;
    IBOutlet UIButton *btnDetail;
}

@property (nonatomic, retain) IBOutlet UIImageView *imageContent;
@property (nonatomic, retain) IBOutlet UIButton *btnDetail;

@end
