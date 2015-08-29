//
//  WebDisplay.m
//  TransitPlanner
//
//  Created by Abhisek Mallik on 8/28/15.
//  Copyright © 2015 Emirates. All rights reserved.
//

#import "WebDisplay.h"

@interface WebDisplay ()<UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (nonatomic, strong) IBOutlet UIView *loaderView;
@property (nonatomic, strong) CAShapeLayer *circle;
@end

@implementation WebDisplay

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    
    /*UIActivityIndicatorView *spinner = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    spinner.center = CGPointMake(160, 240);
    [self.view addSubview:spinner];
    
    [self.loaderView addSubview:spinner];*/
    
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
        
        self.loaderView.hidden = NO;
        self.webView.delegate = self;
        
        self.loaderView.layer.cornerRadius = 8.0;
        self.loaderView.layer.masksToBounds = YES;
        self.loaderView.layer.borderWidth = 1.0;
        
        self.loaderView.layer.shadowColor = [UIColor blackColor].CGColor;
        self.loaderView.layer.shadowOpacity = 0.35f;
        self.loaderView.layer.shadowOffset = CGSizeMake(0.0f, 2.5f);
        self.loaderView.layer.shadowRadius = 2.5f;
        
        int radius = 30;
        _circle = [CAShapeLayer layer];
        // Make a circular shape
        self.circle.path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(0, 0, 2.0*radius, 2.0*radius)
                                                 cornerRadius:radius].CGPath;
        // Center the shape in self.view
        self.circle.position = CGPointMake(CGRectGetMidX(self.loaderView.frame)-radius,
                                      CGRectGetMidY(self.loaderView.frame)-radius);
        
        // Configure the apperence of the circle
        self.circle.fillColor = [UIColor clearColor].CGColor;
        self.circle.strokeColor = [UIColor blueColor].CGColor;
        self.circle.lineWidth = 4;
        
        // Add to parent layer
        [self.view.layer addSublayer:self.circle];
        
        // Configure animation
        CABasicAnimation *drawAnimation = [CABasicAnimation animationWithKeyPath:@"strokeEnd"];
        drawAnimation.duration            = 4.8; // "animate over 10 seconds or so.."
        drawAnimation.repeatCount         = 1.0;  // Animate only once..
        
        // Animate from no part of the stroke being drawn to the entire stroke being drawn
        drawAnimation.fromValue = [NSNumber numberWithFloat:0.0f];
        drawAnimation.toValue   = [NSNumber numberWithFloat:1.0f];
        
        // Experiment with timing to get the appearence to look the way you want
        drawAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
        
        // Add the animation to the circle
        [self.circle addAnimation:drawAnimation forKey:@"drawCircleAnimation"];
        
    }


}

- (void)webViewDidFinishLoad:(UIWebView *)webView {
     self.loaderView.hidden = YES;
    self.circle.hidden = YES;
    
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
