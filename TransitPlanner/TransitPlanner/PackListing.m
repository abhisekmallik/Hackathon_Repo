//
//  PackListing.m
//  TransitPlanner
//
//  Created by Abhisek Mallik on 8/27/15.
//  Copyright © 2015 Emirates. All rights reserved.
//

#import "PackListing.h"
#import "AdvFlightSearch.h"

@interface PackListing ()
@property (weak, nonatomic) IBOutlet UIView *view24hrs;
@property (weak, nonatomic) IBOutlet UIView *view48hrs;
@property (weak, nonatomic) IBOutlet UIView *view72hrs;

- (IBAction)packageSelection:(UIButton *)sender;
@end

@implementation PackListing

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"Transit Packages";
    
    //shadow
    _view24hrs.layer.shadowColor = [UIColor blackColor].CGColor;
    _view24hrs.layer.shadowOpacity = 0.35f;
    _view24hrs.layer.shadowOffset = CGSizeMake(0.0f, 2.5f);
    _view24hrs.layer.shadowRadius = 2.5f;
    
    _view48hrs.layer.shadowColor = [UIColor blackColor].CGColor;
    _view48hrs.layer.shadowOpacity = 0.35f;
    _view48hrs.layer.shadowOffset = CGSizeMake(0.0f, 2.5f);
    _view48hrs.layer.shadowRadius = 2.5f;
    
    _view72hrs.layer.shadowColor = [UIColor blackColor].CGColor;
    _view72hrs.layer.shadowOpacity = 0.35f;
    _view72hrs.layer.shadowOffset = CGSizeMake(0.0f, 2.5f);
    _view72hrs.layer.shadowRadius = 2.5f;
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

- (IBAction)packageSelection:(UIButton *)sender {
    AdvFlightSearch *flightSrch = [[AdvFlightSearch alloc] initWithNibName:@"AdvFlightSearch" bundle:nil];
    [self.navigationController pushViewController:flightSrch animated:YES];
}
@end
