//
//  DataManager.h
//  TransitPlanner
//
//  Created by Abhisek Mallik on 8/28/15.
//  Copyright © 2015 Emirates. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HotelModel.h"

@protocol DataManagerDelegate <NSObject>

- (void)parsingCompleted;

@end

@interface DataManager : NSObject

+ (DataManager *)sharedInstance;
@property (nonatomic, strong) NSMutableArray *arrHotels;
@property (nonatomic, assign) id <DataManagerDelegate> delegate;
- (void)parseHotelAPI:(NSDictionary *)dictResponse;


@property (nonatomic, strong) HotelModel *selectedHotel;
@property (nonatomic, strong) NSString *selectedPrice;

@end
