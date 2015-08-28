//
//  ConfirmTransit.m
//  TransitPlanner
//
//  Created by Abhisek Mallik on 8/29/15.
//  Copyright © 2015 Emirates. All rights reserved.
//

#import "ConfirmTransit.h"
#import "CouponDisplay.h"

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

- (IBAction)rewardsAction:(UIButton *)sender {
    CouponDisplay *display = [[CouponDisplay alloc] initWithNibName:@"CouponDisplay" bundle:nil];
    [self.navigationController pushViewController:display animated:YES];
}
@end
