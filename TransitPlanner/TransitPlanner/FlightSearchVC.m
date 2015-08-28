//
//  FlightSearchVC.m
//  TransitPlanner
//
//  Created by Abhisek Mallik on 25/08/15.
//  Copyright (c) 2015 Emirates. All rights reserved.
//

#import "FlightSearchVC.h"
#import "PackageOverview.h"
#import "PackageDetailsViewController.h"

@interface FlightSearchVC ()
- (IBAction)infoAction:(UIButton *)sender;

@end

@implementation FlightSearchVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"Search Result";
    
    
    
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

- (IBAction)infoAction:(UIButton *)sender {
   // PackageOverview *overview = [[PackageOverview alloc] initWithNibName:@"PackageOverview" bundle:nil];
    //[self.navigationController pushViewController:overview animated:YES];
    
    PackageDetailsViewController *packageDetails = [[PackageDetailsViewController alloc] initWithNibName:@"PackageDetailsViewController" bundle:nil];
    [self.navigationController pushViewController:packageDetails animated:YES];

    
}
@end
