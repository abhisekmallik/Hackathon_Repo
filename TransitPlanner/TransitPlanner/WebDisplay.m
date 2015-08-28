//
//  WebDisplay.m
//  TransitPlanner
//
//  Created by Abhisek Mallik on 8/28/15.
//  Copyright © 2015 Emirates. All rights reserved.
//

#import "WebDisplay.h"

@interface WebDisplay ()
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation WebDisplay

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    if (_dubaiStopovers) {
        
        self.title = @"Dubai Information";
        
        NSString *path = [[NSBundle mainBundle] pathForResource:@"final_brochure_25sept2014_v2" ofType:@"pdf"];
        NSURL *targetURL = [NSURL fileURLWithPath:path];
        NSURLRequest *request = [NSURLRequest requestWithURL:targetURL];
        [_webView loadRequest:request];
    } else {
//        NSString *localFilePath = [[NSBundle mainBundle] pathForResource:@"DubaiCal" ofType:@"html"];
        
//        NSURLRequest *request = [NSURLRequest requestWithURL:
//                                      [NSURL fileURLWithPath:localFilePath]] ;
//        [_webView loadRequest:request];
        
//        NSString* htmlString = [NSString stringWithContentsOfFile:localFilePath encoding:NSUTF8StringEncoding error:nil];
//        [_webView loadHTMLString:htmlString baseURL:nil];
        
        
        self.title = @"Dubai Events";
        NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.visitdubai.com/en/visiting/at-a-glance/events-calendar"]];
        [_webView loadRequest:request];
    }


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
