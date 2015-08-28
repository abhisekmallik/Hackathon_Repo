//
//  PackageDetailsViewController.m
//  TransitPlanner
//
//  Created by Abhishek Verma on 8/28/15.
//  Copyright (c) 2015 Emirates. All rights reserved.
//

#import "PackageDetailsViewController.h"

@interface PackageDetailsViewController ()
@property (nonatomic, strong) IBOutlet UIScrollView *scrl;
@property (nonatomic, strong) IBOutlet UIImageView *imgBg1;
@property (nonatomic, strong) IBOutlet UIImageView *imgBg2;
@property (nonatomic, strong) IBOutlet UIImageView *imgBg;
@property (nonatomic, assign) IBOutlet UILabel *lblPrice;
@end

@implementation PackageDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.title = @"Package Details";
    
    self.imgBg1.image = [UIImage imageNamed:@"dubai HOHO rs (960 x 356).jpg"];
    self.imgBg2.image = [UIImage imageNamed:@"desert-safari-dubai-safari_in_dubai.jpg"];
    self.imgBg.image = [UIImage imageNamed:@"o-DUBAI-TIME-LAPSE-VIDEO-facebook.jpg"];
    
    NSMutableAttributedString *attributeString = [[NSMutableAttributedString alloc] initWithString:@"AED 3000"];
    [attributeString addAttribute:NSStrikethroughStyleAttributeName
                            value:@2
                            range:NSMakeRange(0, [attributeString length])];
    
    self.lblPrice.attributedText = attributeString;
    
//    
//    [attributeString addAttributes:@{NSStrikethroughStyleAttributeName: @(NSUnderlineStyleSingle)
//                                      , NSStrikethroughColorAttributeName: [UIColor redColor]
//                                     , NSBackgroundColorAttributeName: [UIColor yellowColor]}];
//    
    
    
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
