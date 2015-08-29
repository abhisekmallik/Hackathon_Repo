//
//  PackageDetailsViewController.m
//  TransitPlanner
//
//  Created by Abhishek Verma on 8/28/15.
//  Copyright (c) 2015 Emirates. All rights reserved.
//

#import "PackageDetailsViewController.h"
#import "ReviewItinerary.h"

@interface PackageDetailsViewController ()
@property (nonatomic, strong) IBOutlet UIScrollView *scrl;
@property (nonatomic, assign) IBOutlet UILabel *lblPrice;
- (IBAction)purchaseAction:(UIButton *)sender;

@property (strong, nonatomic) IBOutlet UIView *day1;
@property (strong, nonatomic) IBOutlet UIView *day2;
@property (strong, nonatomic) IBOutlet UIView *day3;
@property (strong, nonatomic) IBOutlet UIView *price;


@end

@implementation PackageDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.title = @"Package Details";
    
    UIBarButtonItem *leftBtn = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:self action:@selector(leftTopBarButtonClickedAction:)];
    
    self.navigationController.topViewController.navigationItem.leftBarButtonItem = leftBtn;
    
    NSMutableAttributedString *attributeString = [[NSMutableAttributedString alloc] initWithString:@"AED 1000"];
    [attributeString addAttribute:NSStrikethroughStyleAttributeName
                            value:@2
                            range:NSMakeRange(0, [attributeString length])];
    
    self.lblPrice.attributedText = attributeString;
    
   
    NSInteger y = 0;
    NSInteger gap = 10;
    
    CGRect frame = _day1.frame;
    frame.origin.y = 0;
    frame.origin.x = 0;
    _day1.frame = frame;
    
    //shadow
    _day1.layer.shadowColor = [UIColor blackColor].CGColor;
    _day1.layer.shadowOpacity = 0.35f;
    _day1.layer.shadowOffset = CGSizeMake(0.0f, 2.5f);
    _day1.layer.shadowRadius = 2.5f;
    
    [_scrl addSubview:_day1];
    
    
    y += frame.size.height + gap;
    
    frame = _day2.frame;
    frame.origin.y = y;
    frame.origin.x = 0;
    _day2.frame = frame;
    
    //shadow
    _day2.layer.shadowColor = [UIColor blackColor].CGColor;
    _day2.layer.shadowOpacity = 0.35f;
    _day2.layer.shadowOffset = CGSizeMake(0.0f, 2.5f);
    _day2.layer.shadowRadius = 2.5f;
    
    [_scrl addSubview:_day2];
    
    y += frame.size.height + gap;
    
    frame = _day3.frame;
    frame.origin.y = y;
    frame.origin.x = 0;
    _day3.frame = frame;
    
    //shadow
    _day3.layer.shadowColor = [UIColor blackColor].CGColor;
    _day3.layer.shadowOpacity = 0.35f;
    _day3.layer.shadowOffset = CGSizeMake(0.0f, 2.5f);
    _day3.layer.shadowRadius = 2.5f;
    
    [_scrl addSubview:_day3];
    
    y += frame.size.height + gap;
    
    frame = _price.frame;
    frame.origin.y = y;
    frame.origin.x = 0;
    _price.frame = frame;
    
    //shadow
    _price.layer.shadowColor = [UIColor blackColor].CGColor;
    _price.layer.shadowOpacity = 0.35f;
    _price.layer.shadowOffset = CGSizeMake(0.0f, 2.5f);
    _price.layer.shadowRadius = 2.5f;
    
    [_scrl addSubview:_price];
    
    y += frame.size.height + gap;
    
    
    _scrl.contentSize = CGSizeMake(320, y);
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

- (IBAction)purchaseAction:(UIButton *)sender {
    ReviewItinerary *review = [[ReviewItinerary alloc] initWithNibName:@"ReviewItinerary" bundle:nil];
    [self.navigationController pushViewController:review animated:YES];
}
@end
