//
//  HotelList.m
//  TransitPlanner
//
//  Created by Abhisek Mallik on 8/27/15.
//  Copyright © 2015 Emirates. All rights reserved.
//

#import "HotelList.h"
#import "HotelCell.h"

@interface HotelList ()
@property (weak, nonatomic) IBOutlet UIScrollView *baseScrollview;

@end

@implementation HotelList

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    CGFloat y = 0.0f;
    for (int i = 0; i < 20; i++) {
        NSArray *xib = [[NSBundle mainBundle] loadNibNamed:@"HotelCell" owner:self options:nil];
        HotelCell * cell = [xib firstObject];
        cell.hotelName.text = @"Airport Hotel";
        cell.hotelAddress.text = @"Dubai International Airport, Terminal 3, Garhoud, Dubai";
        cell.hotelPaxCount.text = @"Adult: 1";
        cell.hotelRoomPrice.text = @"AED 159";
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
        
        y += 227 + 5.0f;
    }
    
    _baseScrollview.contentSize = CGSizeMake(321, 20 * (227 + 5));
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

@end
