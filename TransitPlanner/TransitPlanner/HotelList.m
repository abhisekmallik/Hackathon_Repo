//
//  HotelList.m
//  TransitPlanner
//
//  Created by Abhisek Mallik on 8/27/15.
//  Copyright © 2015 Emirates. All rights reserved.
//

#import "HotelList.h"
#import "HotelCell.h"
#import <GoogleMaps/GoogleMaps.h>
#import "DataManager.h"
#import "HotelModel.h"

@interface HotelList ()
@property (weak, nonatomic) IBOutlet UIScrollView *baseScrollview;

@end

@implementation HotelList

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    DataManager *mgr = [DataManager sharedInstance];
    
    
    CGFloat y = 0.0f;
    for (HotelModel *model in mgr.arrHotels) {

        NSArray *xib = [[NSBundle mainBundle] loadNibNamed:@"HotelCell" owner:self options:nil];
        HotelCell * cell = [xib firstObject];
        cell.model = model;

        [cell setupView];
        
        CGRect rect = cell.frame;
        rect.size.height = 227;
        rect.origin = CGPointMake(0, y);
        cell.frame = rect;
        
        //shadow
        cell.layer.shadowColor = [UIColor blackColor].CGColor;
        cell.layer.shadowOpacity = 0.35f;
        cell.layer.shadowOffset = CGSizeMake(0.0f, 2.5f);
        cell.layer.shadowRadius = 2.5f;
        
        [_baseScrollview addSubview:cell];
        
        y += 227 + 10.0f;
    }
    
    _baseScrollview.contentSize = CGSizeMake(321, 20 * (227 + 10));
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
    static dispatch_once_t pred = 0;\
    dispatch_once(&pred, ^{
        [GMSServices provideAPIKey:@"AIzaSyBiIw4eigxImLmP7uutjV3rtV2GSNq0n2k"];
        
        GMSServices *gmsServices = [GMSServices sharedServices];
        
        NSLog(@"Google Map SDK Version: %@", [GMSServices SDKVersion]);
        
        // Log the required open source licenses!  Yes, just NSLog-ing them is not
        // enough but is good for a demo.
        NSLog(@"Open source licenses:\n%@", [GMSServices openSourceLicenseInfo]);
    });
    
}

@end
