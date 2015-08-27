//
//  AdvFlightSearch.m
//  TransitPlanner
//
//  Created by Abhisek Mallik on 8/27/15.
//  Copyright © 2015 Emirates. All rights reserved.
//

#import "AdvFlightSearch.h"
#import "BookingCont.h"

@interface AdvFlightSearch ()
@property (strong, nonatomic) IBOutlet UIView *viewAdvSrch1;
@property (strong, nonatomic) IBOutlet UIView *viewAdvSrch2;
- (IBAction)srch1Action:(UIButton *)sender;
- (IBAction)srch2Action:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIScrollView *baseScrollView;

@end

@implementation AdvFlightSearch

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Flight Search";
    
    // Do any additional setup after loading the view from its nib.
    CGRect frame = _viewAdvSrch1.frame;
    frame.origin = CGPointMake(0, 0);
    _viewAdvSrch1.frame = frame;
    [_baseScrollView addSubview:_viewAdvSrch1];
    
    frame = _viewAdvSrch2.frame;
    frame.origin = CGPointMake(_viewAdvSrch1.frame.size.width, 0);
    _viewAdvSrch2.frame = frame;
    [_baseScrollView addSubview:_viewAdvSrch2];
    [_baseScrollView setScrollEnabled:NO];
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

- (IBAction)srch1Action:(UIButton *)sender {
    [_baseScrollView setContentOffset:CGPointMake(320, 0) animated:YES];
}

- (IBAction)srch2Action:(UIButton *)sender {
    BookingCont *booking = [[BookingCont alloc] initWithNibName:@"BookingCont" bundle:nil];
    [self.navigationController pushViewController:booking animated:YES];
}
@end
