//
//  HotelCell.h
//  TransitPlanner
//
//  Created by Abhisek Mallik on 8/27/15.
//  Copyright © 2015 Emirates. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HotelCell : UIView
@property (weak, nonatomic) IBOutlet UIImageView *hotelImage;
@property (weak, nonatomic) IBOutlet UILabel *hotelName;
@property (weak, nonatomic) IBOutlet UILabel *hotelAddress;
@property (weak, nonatomic) IBOutlet UIImageView *hotelRatings;
@property (weak, nonatomic) IBOutlet UILabel *hotelPaxCount;
@property (weak, nonatomic) IBOutlet UILabel *hotelRoomPrice;
- (void)setupView;
@end
