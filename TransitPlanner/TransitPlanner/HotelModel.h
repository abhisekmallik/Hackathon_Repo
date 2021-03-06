//
//  HotelModel.h
//  TransitPlanner
//
//  Created by Abhisek Mallik on 8/28/15.
//  Copyright © 2015 Emirates. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface HotelModel : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *address;
@property (nonatomic, strong) NSString *latitude;
@property (nonatomic, strong) NSString *longitude;
@property (nonatomic, strong) NSString *rating;
@property (nonatomic, strong) NSDictionary *roomType;

@property (nonatomic, strong) NSString *selectedPrice;
@property (nonatomic, strong) UIImage *image;
@property (nonatomic, strong) NSString *selectedRoomCount;
@property (nonatomic, strong) NSString *selectedRoomType;

@end
