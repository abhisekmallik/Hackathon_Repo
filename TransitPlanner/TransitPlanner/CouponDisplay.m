//
//  CouponDisplay.m
//  TransitPlanner
//
//  Created by Abhisek Mallik on 8/29/15.
//  Copyright © 2015 Emirates. All rights reserved.
//

#import "CouponDisplay.h"

@interface CouponDisplay ()
@property (weak, nonatomic) IBOutlet UIView *coupon1;
@property (weak, nonatomic) IBOutlet UIView *coupon2;
@property (weak, nonatomic) IBOutlet UIView *coupon3;

@end

@implementation CouponDisplay

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"Rewards";
    
    //shadow
    _coupon1.layer.shadowColor = [UIColor blackColor].CGColor;
    _coupon1.layer.shadowOpacity = 0.35f;
    _coupon1.layer.shadowOffset = CGSizeMake(0.0f, 2.5f);
    _coupon1.layer.shadowRadius = 2.5f;
    
    //shadow
    _coupon2.layer.shadowColor = [UIColor blackColor].CGColor;
    _coupon2.layer.shadowOpacity = 0.35f;
    _coupon2.layer.shadowOffset = CGSizeMake(0.0f, 2.5f);
    _coupon2.layer.shadowRadius = 2.5f;
    
    //shadow
    _coupon3.layer.shadowColor = [UIColor blackColor].CGColor;
    _coupon3.layer.shadowOpacity = 0.35f;
    _coupon3.layer.shadowOffset = CGSizeMake(0.0f, 2.5f);
    _coupon3.layer.shadowRadius = 2.5f;
    
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

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
