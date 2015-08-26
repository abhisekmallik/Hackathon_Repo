//
//  AppDelegate.h
//  TransitPlanner
//
//  Created by Abhisek Mallik on 8/20/15.
//  Copyright © 2015 Emirates. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FlightSearchVC;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) FlightSearchVC *searchVC;

@end

