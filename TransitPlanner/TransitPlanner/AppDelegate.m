//
//  AppDelegate.m
//  TransitPlanner
//
//  Created by Abhisek Mallik on 8/20/15.
//  Copyright © 2015 Emirates. All rights reserved.
//

#import "AppDelegate.h"
#import "FlightSearchVC.h"
#import "UIColor+CustomColors.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self customizeNavigationBar];
    [self customizeNavigationBarButton];
    [self customizeSegmentedControl];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [self.window setBackgroundColor:[UIColor whiteColor]];
    
    FlightSearchVC *flight = [[FlightSearchVC alloc] initWithNibName:@"FlightSearchVC" bundle:nil];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:flight];
    self.window.rootViewController = nav;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

#pragma mark - Custom Methods
- (void)customizeNavigationBar
{
    [[UINavigationBar appearance] setBackgroundImage:[UIColor imageWithColor:[UIColor colorWithRed:(247/255.0) green:(247/255.0) blue:(247/255.0) alpha:1]] forBarMetrics:UIBarMetricsDefault];
    
    NSShadow *shadow = [[NSShadow alloc] init];
    shadow.shadowColor = [UIColor clearColor];
    shadow.shadowBlurRadius = 0.0;
    shadow.shadowOffset = CGSizeMake(0.0, 2.0);
    
    // Customize the title text for *all* UINavigationBars
    [[UINavigationBar appearance] setTitleTextAttributes:
     @{NSForegroundColorAttributeName: [UIColor colorFromHex:@"#414141"],
       NSShadowAttributeName: shadow,
       NSFontAttributeName: [UIFont fontWithName:@"Emirates SM"/*kNavBarTitleFont*/ size:17]}];
}

- (void)customizeNavigationBarButton
{
    UIImage *image = [UIColor imageWithColor:[UIColor colorWithRed:(247/255.0) green:(247/255.0) blue:(247/255.0) alpha:1]];
    
    // Change the appreance of Back Button
    [[UIBarButtonItem appearance] setBackButtonBackgroundImage:image
                                                      forState:UIControlStateHighlighted
                                                    barMetrics:UIBarMetricsDefault];
    [[UIBarButtonItem appearance] setBackButtonBackgroundImage:image
                                                      forState:UIControlStateNormal
                                                    barMetrics:UIBarMetricsDefault];
    
    //    [[UIBarButtonItem appearance] setBackButtonBackgroundImage:image
    //                                                      forState:UIControlStateSelected
    //                                                    barMetrics:UIBarMetricsDefault];
    
    
    // Change the appreance of bar button
    //appearanceWhenContainedIn:[UINavigationBar class], [UIToolbar class], nil
    [[UIBarButtonItem appearance] setBackgroundImage:image forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    [[UIBarButtonItem appearance] setBackgroundImage:image forState:UIControlStateHighlighted barMetrics:UIBarMetricsDefault];
    //    [[UIBarButtonItem appearance] setBackgroundImage:image forState:UIControlStateSelected barMetrics:UIBarMetricsDefault];
    
    NSShadow *shadow = [[NSShadow alloc] init];
    shadow.shadowColor = [UIColor clearColor];
    shadow.shadowBlurRadius = 0.0;
    shadow.shadowOffset = CGSizeMake(0.0, 2.0);
    
    // Change bar button text attributes
    [[UIBarButtonItem appearance]
     setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorFromHex:@"#d71921"],
                              NSShadowAttributeName: shadow,
                              NSFontAttributeName: [UIFont fontWithName:@"HelveticaNeue-Light" size:17]}
     forState:UIControlStateNormal];
    
    [[UIBarButtonItem appearance]
     setTitleTextAttributes:@{NSForegroundColorAttributeName: [UIColor colorFromHex:@"#d71921"],
                              NSShadowAttributeName: shadow,
                              NSFontAttributeName: [UIFont fontWithName:@"HelveticaNeue-Light" size:17]}
     forState:UIControlStateHighlighted];
    
    //    [[UIBarButtonItem appearance]
    //     setTitleTextAttributes:@{UITextAttributeTextColor: [UIColor colorFromHex:kNavBarButtonItemFontColor],
    //                              UITextAttributeTextShadowColor: [UIColor clearColor],
    //                              UITextAttributeFont: [UIFont fontWithName:kNavBarButtonItemFont size:17]}
    //     forState:UIControlStateSelected];
    
}

- (void)customizeSegmentedControl
{
    [[UISegmentedControl appearance] setTintColor:[UIColor colorFromHex:@"#d71921"]];
}

@end
