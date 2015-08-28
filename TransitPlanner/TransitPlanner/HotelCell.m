//
//  HotelCell.m
//  TransitPlanner
//
//  Created by Abhisek Mallik on 8/27/15.
//  Copyright © 2015 Emirates. All rights reserved.
//

#import "HotelCell.h"
#import "NIDropDown.h"

@interface HotelCell () <NIDropDownDelegate>
@property (weak, nonatomic) IBOutlet UIButton *btnSelect;
- (IBAction)selectAction:(UIButton *)sender;
- (IBAction)stepperAction:(UIStepper *)sender;
@property (weak, nonatomic) IBOutlet UITextField *txtRoomCount;
@property (nonatomic, strong) NIDropDown *dropDown;

@end

@implementation HotelCell

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)setupView {
    
    _hotelName.text = _model.name;
    _hotelAddress.text = _model.address;
    _hotelPaxCount.text = @"Adult: 1";
    _hotelRoomPrice.text = @"AED 0";
    
    NSString *ratingImage = [NSString stringWithFormat:@"%@-MCID-%ld",_model.rating, [_model.rating integerValue]];
    
    _hotelRatings.image = [UIImage imageNamed:ratingImage];
    
    _btnSelect.layer.borderWidth = 1;
    _btnSelect.layer.borderColor = [[UIColor blackColor] CGColor];
    _btnSelect.layer.cornerRadius = 5;
}

- (IBAction)selectAction:(UIButton *)sender {
    
    NSArray * arr = [_model.roomType allKeys];
    
//    arr = [NSArray arrayWithObjects:@"Hello 0", @"Hello 1", @"Hello 2", @"Hello 3", @"Hello 4", @"Hello 5", @"Hello 6", @"Hello 7", @"Hello 8", @"Hello 9",nil];
//    NSArray * arrImage = [[NSArray alloc] init];
//    arrImage = [NSArray arrayWithObjects:[UIImage imageNamed:@"apple.png"], [UIImage imageNamed:@"apple2.png"], [UIImage imageNamed:@"apple.png"], [UIImage imageNamed:@"apple2.png"], [UIImage imageNamed:@"apple.png"], [UIImage imageNamed:@"apple2.png"], [UIImage imageNamed:@"apple.png"], [UIImage imageNamed:@"apple2.png"], [UIImage imageNamed:@"apple.png"], [UIImage imageNamed:@"apple2.png"], nil];
    if(_dropDown == nil) {
        CGFloat f = 120;
        _dropDown = [[NIDropDown alloc] showDropDownButton:sender height:&f titleArray:arr imageArray:nil direction:@"up"];
//        _dropDown = [[NIDropDown alloc]showDropDown:sender :&f :arr :arrImage :@"down"];
        _dropDown.delegate = self;
    }
    else {
        [_dropDown hideDropDown:sender];
        _dropDown = nil;
    }
}

- (void) niDropDownDelegateMethod: (NIDropDown *) sender {
    _dropDown = nil;
}

- (IBAction)stepperAction:(UIStepper *)sender {
//    NSInteger count = [_txtRoomCount.text integerValue];
//    count += sender.value;
    _txtRoomCount.text = [NSString stringWithFormat:@"%d",(int)sender.value];
}
@end
