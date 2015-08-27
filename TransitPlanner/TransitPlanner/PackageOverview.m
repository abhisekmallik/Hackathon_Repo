//
//  PackageOverview.m
//  TransitPlanner
//
//  Created by Abhisek Mallik on 8/26/15.
//  Copyright © 2015 Emirates. All rights reserved.
//

#import "PackageOverview.h"
#import "PackListing.h"

@interface PackageOverview () <UIWebViewDelegate>

@property (nonatomic, weak) IBOutlet UIWebView *webView;
- (IBAction)packageInfo:(UIButton *)sender;

@end

@implementation PackageOverview

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Transit Package Overview";

    UIBarButtonItem *leftBtn = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:self action:@selector(leftTopBarButtonClickedAction:)];
    
    self.navigationController.topViewController.navigationItem.leftBarButtonItem = leftBtn;
    
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"final_brochure_25sept2014_v2" ofType:@"pdf"];
    NSURL *targetURL = [NSURL fileURLWithPath:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:targetURL];
    [_webView loadRequest:request];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)leftTopBarButtonClickedAction:(UIBarButtonItem *)button
{
    // Use Navigation Controller's category instead of view controller methods
    [self.navigationController popViewControllerAnimated:YES];
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
@end
