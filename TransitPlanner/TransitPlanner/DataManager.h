//
//  DataManager.h
//  TransitPlanner
//
//  Created by Abhisek Mallik on 8/28/15.
//  Copyright © 2015 Emirates. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DataManagerDelegate <NSObject>

- (void)parsingCompleted;

@end

@interface DataManager : NSObject

+ (DataManager *)sharedInstance;
@property (nonatomic, strong) NSMutableArray *arrHotels;
@property (nonatomic, assign) id <DataManagerDelegate> delegate;
- (void)parseHotelAPI:(NSDictionary *)dictResponse;

@end
