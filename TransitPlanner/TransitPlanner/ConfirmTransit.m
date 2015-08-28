//
//  ConfirmTransit.m
//  TransitPlanner
//
//  Created by Abhisek Mallik on 8/29/15.
//  Copyright © 2015 Emirates. All rights reserved.
//

#import "ConfirmTransit.h"
#import "CouponDisplay.h"
#import "WASWhatsAppUtil.h"

@interface ConfirmTransit ()
- (IBAction)rewardsAction:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIView *view1;
@property (weak, nonatomic) IBOutlet UIView *view2;

@end

@implementation ConfirmTransit

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"Confirmation";
    
    //shadow
    _view1.layer.shadowColor = [UIColor blackColor].CGColor;
    _view1.layer.shadowOpacity = 0.35f;
    _view1.layer.shadowOffset = CGSizeMake(0.0f, 2.5f);
    _view1.layer.shadowRadius = 2.5f;
    
    //shadow
    _view2.layer.shadowColor = [UIColor blackColor].CGColor;
    _view2.layer.shadowOpacity = 0.35f;
    _view2.layer.shadowOffset = CGSizeMake(0.0f, 2.5f);
    _view2.layer.shadowRadius = 2.5f;
    
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

- (IBAction)btnShareDidSelect:(id)sender {
    [[WASWhatsAppUtil getInstance] sendText:@"Pleae visit appstore link: https://itunes.apple.com/in/app/emirates/id714004391?mt=8 to install iPhone Emirates app and book Emirates transit package at discounted price."];
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

- (IBAction)rewardsAction:(UIButton *)sender {
    CouponDisplay *display = [[CouponDisplay alloc] initWithNibName:@"CouponDisplay" bundle:nil];
    [self.navigationController pushViewController:display animated:YES];
}
@end
