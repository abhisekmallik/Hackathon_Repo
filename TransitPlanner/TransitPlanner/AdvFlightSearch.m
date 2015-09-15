//
//  AdvFlightSearch.m
//  TransitPlanner
//
//  Created by Abhisek Mallik on 8/27/15.
//  Copyright © 2015 Emirates. All rights reserved.
//

#import "AdvFlightSearch.h"
#import "BookingCont.h"

#define IS_IPAD (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
#define IS_IPHONE (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
#define IS_RETINA ([[UIScreen mainScreen] scale] >= 2.0)

#define SCREEN_WIDTH ([[UIScreen mainScreen] bounds].size.width)
#define SCREEN_HEIGHT ([[UIScreen mainScreen] bounds].size.height)
#define SCREEN_MAX_LENGTH (MAX(SCREEN_WIDTH, SCREEN_HEIGHT))
#define SCREEN_MIN_LENGTH (MIN(SCREEN_WIDTH, SCREEN_HEIGHT))

#define IS_IPHONE_4_OR_LESS (IS_IPHONE && SCREEN_MAX_LENGTH < 568.0)
#define IS_IPHONE_5 (IS_IPHONE && SCREEN_MAX_LENGTH == 568.0)
#define IS_IPHONE_6 (IS_IPHONE && SCREEN_MAX_LENGTH == 667.0)
#define IS_IPHONE_6P (IS_IPHONE && SCREEN_MAX_LENGTH == 736.0)

@interface AdvFlightSearch ()
@property (strong, nonatomic) IBOutlet UIView *viewAdvSrch1;
@property (strong, nonatomic) IBOutlet UIView *viewAdvSrch2;
- (IBAction)srch1Action:(UIButton *)sender;
- (IBAction)srch2Action:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIScrollView *baseScrollView;
@property (weak, nonatomic) IBOutlet UIImageView *imgSrch1;
@property (weak, nonatomic) IBOutlet UIImageView *imgSrch2;

@end

@implementation AdvFlightSearch

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Flight Search";
    if (IS_IPHONE_4_OR_LESS || IS_IPHONE_5) {
        _imgSrch1.image = [UIImage imageNamed:@"Adv_Search_1"];
        _imgSrch2.image = [UIImage imageNamed:@"Adv_Search_2"];
    } else if (IS_IPHONE_6 || IS_IPHONE_6P) {
        _imgSrch1.image = [UIImage imageNamed:@"Adv_Search_iP6_1"];
        _imgSrch2.image = [UIImage imageNamed:@"Adv_Search_iP6_2"];
    }

    // Do any additional setup after loading the view from its nib.
    CGRect frame = _viewAdvSrch1.frame;
    frame.origin = CGPointMake(0, 0);
    _viewAdvSrch1.frame = frame;
    [_baseScrollView addSubview:_viewAdvSrch1];
    
    
    
    frame = _viewAdvSrch2.frame;
    frame.origin = CGPointMake([UIScreen mainScreen].bounds.size.width, 0);
    _viewAdvSrch2.frame = frame;
    [_baseScrollView addSubview:_viewAdvSrch2];
    [_baseScrollView setScrollEnabled:NO];
    
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

- (IBAction)srch1Action:(UIButton *)sender {
    [_baseScrollView setContentOffset:CGPointMake([UIScreen mainScreen].bounds.size.width, 0) animated:YES];
}

- (IBAction)srch2Action:(UIButton *)sender {
    BookingCont *booking = [[BookingCont alloc] initWithNibName:@"BookingCont" bundle:nil];
    [self.navigationController pushViewController:booking animated:YES];
}
@end
