//
//  ReviewItinerary.m
//  TransitPlanner
//
//  Created by Abhisek Mallik on 8/28/15.
//  Copyright © 2015 Emirates. All rights reserved.
//

#import "ReviewItinerary.h"
#import "DataManager.h"
#import "HotelModel.h"
#import "HotelCell.h"
#import "ConfirmTransit.h"

@interface ReviewItinerary ()
@property (weak, nonatomic) IBOutlet UILabel *hotelName;
@property (weak, nonatomic) IBOutlet UILabel *hotelAddress;
@property (weak, nonatomic) IBOutlet UIImageView *hotelImage;
@property (weak, nonatomic) IBOutlet UILabel *roomCount;
@property (weak, nonatomic) IBOutlet UILabel *roomType;
@property (weak, nonatomic) IBOutlet UILabel *price;
@property (weak, nonatomic) IBOutlet UIImageView *imgRating;
@property (weak, nonatomic) IBOutlet UILabel *total;

@property (weak, nonatomic) IBOutlet UIView *packageView;
@property (weak, nonatomic) IBOutlet HotelCell *hotelCell;
- (IBAction)purchaseItinerary:(UIButton *)sender;
@end

@implementation ReviewItinerary

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.title = @"Review Itinerary";
    
    DataManager *mgr = [DataManager sharedInstance];
    HotelModel *hotel = mgr.selectedHotel;
    _hotelName.text = hotel.name;
    _hotelAddress.text = hotel.address;
    _hotelImage.image = hotel.image;
    _roomCount.text = [NSString stringWithFormat:@"Room: %@",hotel.selectedRoomCount];
    _roomType.text = hotel.selectedRoomType;
    
    NSString *ratingImage = [NSString stringWithFormat:@"%@-MCID-%ld",hotel.rating, [hotel.rating integerValue]];
    
    _imgRating.image = [UIImage imageNamed:ratingImage];
    _price.text = [NSString stringWithFormat:@"%@",hotel.selectedPrice];
    
    NSString *strPrice = [hotel.selectedPrice stringByReplacingOccurrencesOfString:@"AED " withString:@""];
    CGFloat price = [strPrice floatValue] + 700;
    
    _total.text = [NSString stringWithFormat:@"AED %.2f",price];
    
    
    //shadow
    _hotelCell.layer.shadowColor = [UIColor blackColor].CGColor;
    _hotelCell.layer.shadowOpacity = 0.35f;
    _hotelCell.layer.shadowOffset = CGSizeMake(0.0f, 2.5f);
    _hotelCell.layer.shadowRadius = 2.5f;
    
    //shadow
    _packageView.layer.shadowColor = [UIColor blackColor].CGColor;
    _packageView.layer.shadowOpacity = 0.35f;
    _packageView.layer.shadowOffset = CGSizeMake(0.0f, 2.5f);
    _packageView.layer.shadowRadius = 2.5f;
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

- (IBAction)purchaseItinerary:(UIButton *)sender {
    ConfirmTransit *confirm = [[ConfirmTransit alloc] initWithNibName:@"ConfirmTransit" bundle:nil];
    [self.navigationController pushViewController:confirm animated:YES];
}
@end
