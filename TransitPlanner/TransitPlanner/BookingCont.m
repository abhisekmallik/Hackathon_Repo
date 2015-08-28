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
