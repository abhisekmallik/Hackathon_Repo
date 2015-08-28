//
//  PackageOverview.m
//  TransitPlanner
//
//  Created by Abhisek Mallik on 8/26/15.
//  Copyright © 2015 Emirates. All rights reserved.
//

#import "PackageOverview.h"
#import "PackListing.h"
#import "WebDisplay.h"

@interface PackageOverview () <UIWebViewDelegate>

- (IBAction)packageInfo:(UIButton *)sender;
- (IBAction)dubaiCalendar:(UIButton *)sender;
- (IBAction)stopoverInfo:(UIButton *)sender;

@end

@implementation PackageOverview

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Transit Package Overview";

    UIBarButtonItem *leftBtn = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:self action:@selector(leftTopBarButtonClickedAction:)];
    
    self.navigationController.topViewController.navigationItem.leftBarButtonItem = leftBtn;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)leftTopBarButtonClickedAction:(UIBarButtonItem *)button
{
    // Use Navigation Controller's category instead of view controller methods
    //[self.navigationController popViewControllerAnimated:YES];
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration: 1.0];
    [UIView setAnimationCurve: UIViewAnimationCurveEaseInOut];
    [UIView setAnimationTransition: UIViewAnimationTransitionFlipFromRight forView: self.navigationController.view cache: NO];
    [self.navigationController popViewControllerAnimated:YES];
    [UIView commitAnimations];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/



- (IBAction)packageInfo:(UIButton *)sender {
    PackListing *list = [[PackListing alloc] initWithNibName:@"PackListing" bundle:nil];
    [self.navigationController pushViewController:list animated:YES];
}

- (IBAction)dubaiCalendar:(UIButton *)sender {
    WebDisplay *web = [[WebDisplay alloc] initWithNibName:@"WebDisplay" bundle:nil];
    web.dubaiCalendars = YES;
    [self.navigationController pushViewController:web animated:YES];
}

- (IBAction)stopoverInfo:(UIButton *)sender {
    WebDisplay *web = [[WebDisplay alloc] initWithNibName:@"WebDisplay" bundle:nil];
    web.dubaiStopovers = YES;
    [self.navigationController pushViewController:web animated:YES];
}
@end
