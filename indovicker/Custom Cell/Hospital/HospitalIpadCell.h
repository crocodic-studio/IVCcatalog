//
//  HospitalIpadCell.h
//  indovicker
//
//  Created by Zein Rezky Chandra on 5/9/15.
//  Copyright (c) 2015 Crocodic Indonesia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HospitalIpadCell : UITableViewCell{
    IBOutlet UIImageView *imageContent;
    IBOutlet UIButton *btnDetail;
}

@property (nonatomic, retain) IBOutlet UIImageView *imageContent;
@property (nonatomic, retain) IBOutlet UIButton *btnDetail;


@end
