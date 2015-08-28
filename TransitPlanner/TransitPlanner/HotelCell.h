//
//  HotelCell.h
//  TransitPlanner
//
//  Created by Abhisek Mallik on 8/27/15.
//  Copyright © 2015 Emirates. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HotelModel.h"

@protocol HotelCellDelegate <NSObject>

- (void)selectHotel:(HotelModel *)model withPrice:(NSString *)price;
- (void)invokeMapForHotel:(HotelModel *)model;

@end

@interface HotelCell : UIView
@property (weak, nonatomic) IBOutlet UIImageView *hotelImage;
@property (weak, nonatomic) IBOutlet UILabel *hotelName;
@property (weak, nonatomic) IBOutlet UILabel *hotelAddress;
@property (weak, nonatomic) IBOutlet UIImageView *hotelRatings;
@property (weak, nonatomic) IBOutlet UILabel *hotelPaxCount;
@property (weak, nonatomic) IBOutlet UILabel *hotelRoomPrice;

@property (strong, nonatomic) HotelModel *model;
@property (assign, nonatomic) id<HotelCellDelegate> delegate;

- (void)setupView;
@end
