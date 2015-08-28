//
//  BookingCont.m
//  TransitPlanner
//
//  Created by Abhisek Mallik on 8/27/15.
//  Copyright © 2015 Emirates. All rights reserved.
//

#import "BookingCont.h"
#import "HotelList.h"

@interface BookingCont ()
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
    HotelList *list = [[HotelList alloc] initWithNibName:@"HotelList" bundle:nil];
    [self.navigationController pushViewController:list animated:YES];
}
@end
