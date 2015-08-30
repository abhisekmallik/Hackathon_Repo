//
//  MapView.m
//  TransitPlanner
//
//  Created by Abhisek Mallik on 8/28/15.
//  Copyright © 2015 Emirates. All rights reserved.
//

#import "MapView.h"
#import <GoogleMaps/GoogleMaps.h>

@interface MapView ()
@property (strong, nonatomic) GMSMarker *marker;
//@property (strong, nonatomic) NSTimer *timer;
@property (strong, nonatomic) GMSMapView *mapView;
@property (strong, nonatomic) GMSPanoramaView *streetView;
@property (weak, nonatomic) IBOutlet UIView *contentView;
@end

@implementation MapView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.title = @"Map";
    
    UIBarButtonItem *leftBtn = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:self action:@selector(leftTopBarButtonClickedAction:)];
    
    self.navigationController.topViewController.navigationItem.leftBarButtonItem = leftBtn;
}


- (void)leftTopBarButtonClickedAction:(UIBarButtonItem *)button
{
    // Use Navigation Controller's category instead of view controller methods
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated
{
    [self setupGoogleMap];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)initializeGoogleMap
{
    //    static dispatch_once_t pred = 0;\
    //    dispatch_once(&pred, ^{
    //
    //    });
    
//    [GMSServices provideAPIKey:@"AIzaSyBiIw4eigxImLmP7uutjV3rtV2GSNq0n2k"];
    [GMSServices provideAPIKey:@"AIzaSyAAQ1YOW6wY53kZz4sv9Tui89xrU33h7T0"];
    
    GMSServices *gmsServices = [GMSServices sharedServices];
    
    NSLog(@"Google Map SDK Version: %@", [GMSServices SDKVersion]);
    
    // Log the required open source licenses!  Yes, just NSLog-ing them is not
    // enough but is good for a demo.
    NSLog(@"Open source licenses:\n%@", [GMSServices openSourceLicenseInfo]);
    
}

- (void)setupGoogleMap
{
    //lat: -37.81969
    //long: 144.966085
    
    [self initializeGoogleMap];
    
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:[_model.latitude doubleValue]
                                                            longitude:[_model.longitude doubleValue]
                                                                 zoom:13 bearing:0 viewingAngle:0];
    
    _mapView = [GMSMapView mapWithFrame:self.contentView.frame camera:camera];
    _marker = [[GMSMarker alloc] init];

    _marker.title = _model.name;//@"Sydney";
    _marker.snippet = _model.address;
    
    
    CLLocationCoordinate2D airportLocation;
    airportLocation.longitude = [_model.longitude doubleValue];
    airportLocation.latitude = [_model.latitude doubleValue];
    
    _marker.position = airportLocation;// CLLocationCoordinate2DMake(-33.8683, 151.2086);
    _marker.flat = NO;
    _marker.appearAnimation = kGMSMarkerAnimationPop;
    _marker.draggable = NO;
    _marker.map = _mapView;
    
    _mapView.selectedMarker = _marker;
    
    //    CLLocationCoordinate2D location = _marker.position;
    //    GMSCoordinateBounds *bounds = [[GMSCoordinateBounds alloc] initWithCoordinate:location coordinate:location];
    //
    //    bounds = [bounds includingCoordinate:_marker.position];
    //
    //    [_mapView animateWithCameraUpdate:[GMSCameraUpdate fitBounds:bounds withPadding:15.0f]];
    
    //    self.view = _mapView;
    //    [self.view addSubview: _mapView];
    
    [self.contentView addSubview: _mapView];
}

@end
