//
//  HotelList.m
//  TransitPlanner
//
//  Created by Abhisek Mallik on 8/27/15.
//  Copyright © 2015 Emirates. All rights reserved.
//

#import "HotelList.h"
#import "HotelCell.h"
#import <GoogleMaps/GoogleMaps.h>
#import "DataManager.h"
#import "HotelModel.h"
#import "MapView.h"

@interface HotelList () <HotelCellDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *baseScrollview;

@end

@implementation HotelList

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    DataManager *mgr = [DataManager sharedInstance];
    NSInteger height = 296;
    NSInteger gap = 10.0f;
    
    CGFloat y = 0.0f;
    for (HotelModel *model in mgr.arrHotels) {

        NSArray *xib = [[NSBundle mainBundle] loadNibNamed:@"HotelCell" owner:self options:nil];
        HotelCell * cell = [xib firstObject];
        cell.model = model;
        cell.delegate = self;
        [cell setupView];
        
        CGRect rect = cell.frame;
        rect.size.height = height;
        rect.origin = CGPointMake(0, y);
        cell.frame = rect;
        
        //shadow
        cell.layer.shadowColor = [UIColor blackColor].CGColor;
        cell.layer.shadowOpacity = 0.35f;
        cell.layer.shadowOffset = CGSizeMake(0.0f, 2.5f);
        cell.layer.shadowRadius = 2.5f;
        
        [_baseScrollview addSubview:cell];
        
        y += height + gap;
    }
    
    _baseScrollview.contentSize = CGSizeMake(320, [mgr.arrHotels count] * (height + gap));
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





#pragma mark - HotelCellDelegate
- (void)invokeMapForHotel:(HotelModel *)model {
        
    MapView *map = [[MapView alloc] initWithNibName:@"MapView" bundle:nil];
    map.model = model;
    [self.navigationController pushViewController:map animated:YES];
}

- (void)selectHotel:(HotelModel *)model withPrice:(NSString *)price {
    
}

@end
