//
//  BookingCont.m
//  TransitPlanner
//
//  Created by Abhisek Mallik on 8/27/15.
//  Copyright © 2015 Emirates. All rights reserved.
//

#import "BookingCont.h"
#import "HotelList.h"
#import "DataManager.h"


@interface BookingCont () <DataManagerDelegate>
- (IBAction)transitBooking:(UIButton *)sender;

@property (nonatomic, strong) IBOutlet UIView *loaderView;

@end

@implementation BookingCont

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Booking confirmation";
    //    // Do any additional setup after loading the view from its nib.
    //    UIBarButtonItem *leftBtn = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:self action:@selector(leftTopBarButtonClickedAction:)];
    //
    //    self.navigationController.navigationItem.leftBarButtonItem = leftBtn;
    self.navigationItem.hidesBackButton = YES;
    self.navigationItem.leftBarButtonItems = nil;
    
    self.loaderView.layer.cornerRadius = 8.0;
    self.loaderView.layer.masksToBounds = YES;
    self.loaderView.layer.borderWidth = 1.0;
    
    self.loaderView.layer.shadowColor = [UIColor blackColor].CGColor;
    self.loaderView.layer.shadowOpacity = 0.35f;
    self.loaderView.layer.shadowOffset = CGSizeMake(0.0f, 2.5f);
    self.loaderView.layer.shadowRadius = 2.5f;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)leftTopBarButtonClickedAction:(UIBarButtonItem *)button
{
    // Use Navigation Controller's category instead of view controller methods
    [self.navigationController popViewControllerAnimated:YES];
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

- (IBAction)transitBooking:(UIButton *)sender {
    [self fetchHotelAPI];
}

- (void)fetchHotelAPI {
    
    self.loaderView.hidden = NO;
    
    [self.view addSubview:self.loaderView];
    
    int radius = 30;
    CAShapeLayer *circle = [CAShapeLayer layer];
    // Make a circular shape
    circle.path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(0, 0, 2.0*radius, 2.0*radius)
                                             cornerRadius:radius].CGPath;
    // Center the shape in self.view
    circle.position = CGPointMake(CGRectGetMidX(self.loaderView.frame)-radius,
                                  CGRectGetMidY(self.loaderView.frame)-radius);
    
    // Configure the apperence of the circle
    circle.fillColor = [UIColor clearColor].CGColor;
    circle.strokeColor = [UIColor redColor].CGColor;
    circle.lineWidth = 4;
    
    // Add to parent layer
    [self.view.layer addSublayer:circle];
    
    // Configure animation
    CABasicAnimation *drawAnimation = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    drawAnimation.duration            = 1.2; // "animate over 10 seconds or so.."
    drawAnimation.repeatCount         = 1.0;  // Animate only once..
    
    // Animate from no part of the stroke being drawn to the entire stroke being drawn
    drawAnimation.fromValue = [NSNumber numberWithFloat:0.0f];
    drawAnimation.toValue   = [NSNumber numberWithFloat:1.0f];
    
    // Experiment with timing to get the appearence to look the way you want
    drawAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
    
    // Add the animation to the circle
    [circle addAnimation:drawAnimation forKey:@"drawCircleAnimation"];
    
    
    UIActivityIndicatorView *spinner = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    spinner.center = CGPointMake(160, 240);
    [self.view addSubview:spinner];
    
    [self.loaderView addSubview:spinner];
    
    [spinner startAnimating];
    
    NSString *strUrl = @"https://transitplannermiddleware.mybluemix.net/crunchify/triplocationhotel/getLocationHotelsCustom.json";
    
    NSLog(@"Request Url : %@", strUrl);
    
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:[NSURL URLWithString:strUrl]];
    [request setValue:@"application/json"   forHTTPHeaderField:@"Content-Type"];
    [request addValue: @"Keep-Alive"        forHTTPHeaderField:@"Connection"];
    [request setValue:[NSString stringWithFormat:@"0"] forHTTPHeaderField:@"Content-Length"];
    [request setHTTPMethod:@"GET"];
    [request setCachePolicy:NSURLRequestReloadIgnoringLocalAndRemoteCacheData];
    [request setTimeoutInterval:30.0];
    
    NSURLSessionDataTask *task = [[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:^(NSData * __nullable data, NSURLResponse * __nullable response, NSError * __nullable error) {
        
        NSDictionary *dictResponse = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:&error];
        NSLog(@"%@",dictResponse);
        
        self.loaderView.hidden = YES;
        
        DataManager *mgr = [DataManager sharedInstance];
        mgr.delegate = self;
        
        [mgr parseHotelAPI:dictResponse];
    }];
    
    [task resume];
}

- (void)parsingCompleted
{
    [self performSelectorOnMainThread:@selector(navigateToHotels) withObject:nil waitUntilDone:YES];
}

- (void)navigateToHotels {
    HotelList *list = [[HotelList alloc] initWithNibName:@"HotelList" bundle:nil];
    [self.navigationController pushViewController:list animated:YES];
}

@end
