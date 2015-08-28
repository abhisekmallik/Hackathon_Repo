//
//  DataManager.m
//  TransitPlanner
//
//  Created by Abhisek Mallik on 8/28/15.
//  Copyright © 2015 Emirates. All rights reserved.
//

#import "DataManager.h"
#import "HotelModel.h"

@implementation DataManager


+ (DataManager *)sharedInstance {
    static dispatch_once_t pred = 0;\
    __strong static id _sharedObject = nil;\
    dispatch_once(&pred, ^{\
        _sharedObject = [[self alloc] init];
        
    });
    return _sharedObject;
}

- (void)parseHotelAPI:(NSDictionary *)dictResponse {
    
    
    NSArray *hotelData = [dictResponse valueForKeyPath:@"node.locationHotelVo"];
    _arrHotels = [NSMutableArray arrayWithCapacity:[hotelData count]];
    for (NSDictionary *hotel in hotelData) {
        HotelModel *model = [[HotelModel alloc] init];
        model.name = hotel[@"name"];
        model.address = [hotel valueForKeyPath:@"addressObj.address_string"];
        model.longitude = hotel[@"longitude"];
        model.latitude = hotel[@"latitude"];
        model.rating = hotel[@"rating"];
        model.roomType = hotel[@"roomTypeRentMap"];
        
        [_arrHotels addObject:model];
    }
    
    if (_delegate) {
        if ([_delegate respondsToSelector:@selector(parsingCompleted)]) {
            [_delegate parsingCompleted];
        }
    }
}

@end
