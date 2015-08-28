//
//  PackageDetailsVC.m
//  TransitPlanner
//
//  Created by Abhishek Verma on 8/28/15.
//  Copyright (c) 2015 Emirates. All rights reserved.
//

#import "PackageDetailsVC.h"
#import "PackageDetails.h"


@interface PackageDetailsVC () {
    
    NSArray *topItems;
    NSMutableArray *subItems; // array of arrays
    
    int currentExpandedIndex;
}

@property (nonatomic, weak) IBOutlet UITableView *tblDetails;
@property (nonatomic, strong) Day1Vc *day1VC;
@property (nonatomic, strong) Day2VC *day2VC;
@property (nonatomic, weak) IBOutlet UIView *viewDetails;
@property (nonatomic, assign) BOOL bHide;

@end

@implementation PackageDetailsVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.title = @"Package Details";
    
    topItems = [[NSArray alloc] initWithArray:[self topLevelItems]];
    subItems = [NSMutableArray new];
    currentExpandedIndex = -1;
    
    for (int i = 0; i < [topItems count]; i++) {
        [subItems addObject:[self subItems]];
    }
    
    
    self.bHide = NO;
    _day1VC = [[Day1Vc alloc] initWithNibName:@"Day1Vc" bundle:nil];
    //_day2VC = [[Day2VC alloc] initWithNibName:@"Day2VC" bundle:nil];
    [self.viewDetails addSubview:_day1VC.view];
}


- (IBAction)btnDay1DidSelect:(id)sender {
    
    
    if(self.bHide == NO) {
        self.viewDetails.alpha = 1.0f;
        // Then fades it away after 2 seconds (the cross-fade animation will take 0.5s)
        [UIView animateWithDuration:0.2 delay:0.0 options:0 animations:^{
            // Animate the alpha value of your imageView from 1.0 to 0.0 here
            self.viewDetails.alpha = 0.0f;
        } completion:^(BOOL finished) {
            // Once the animation is completed and the alpha has gone to 0.0, hide the view for good
            self.viewDetails.hidden = YES;
            self.bHide = YES;
            [self.viewDetails removeFromSuperview];
        }];
    } 
}

- (IBAction)btnDay2DidSelect:(id)sender {
    
}

- (IBAction)btnDay3DidSelect:(id)sender {
    
}


- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    [self expandItemAtIndex:0];
    
  
}

- (NSArray *)topLevelItems {
    NSMutableArray *items = [NSMutableArray array];
    
    for (int i = 0; i < NUM_TOP_ITEMS; i++) {
        [items addObject:[NSString stringWithFormat:@"Day %d", i + 1]];
    }
    
    return items;
}

- (NSArray *)subItems {
    NSMutableArray *items = [NSMutableArray array];
    int numItems = arc4random() % NUM_SUBITEMS + 1;
    
    for (int i = 0; i < numItems; i++) {
        [items addObject:[NSString stringWithFormat:@"SubItem %d", i + 1]];
    }
    
    return items;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [topItems count] + ((currentExpandedIndex > -1) ? [[subItems objectAtIndex:currentExpandedIndex] count] : 0);
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
        return 40;
}

/*- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    
}*/

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    
    static NSString *ParentCellIdentifier = @"ParentCell";
    static NSString *ChildCellIdentifier = @"ChildCell";
    
    PackageDetails *packageCell = [tableView dequeueReusableCellWithIdentifier:@"ChildCell"];
    

    BOOL isChild =
    currentExpandedIndex > -1
    && indexPath.row > currentExpandedIndex
    && indexPath.row <= currentExpandedIndex + [[subItems objectAtIndex:currentExpandedIndex] count];
    
    UITableViewCell *cell;
    
    if (isChild) {
       
        [tableView registerNib:[UINib nibWithNibName:@"PackageDetails" bundle:nil] forCellReuseIdentifier:@"ChildCell"];
         cell = [tableView dequeueReusableCellWithIdentifier:@"ChildCell"];
        
    }
    else {
        cell = [tableView dequeueReusableCellWithIdentifier:ParentCellIdentifier];
    }
    
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ParentCellIdentifier];
    }
    
    if (isChild) {
        cell.detailTextLabel.text = [[subItems objectAtIndex:currentExpandedIndex] objectAtIndex:indexPath.row - currentExpandedIndex - 1];
    }
    else {
        int topIndex = (currentExpandedIndex > -1 && indexPath.row > currentExpandedIndex)
        ? indexPath.row - [[subItems objectAtIndex:currentExpandedIndex] count]
        : indexPath.row;
        
        cell.textLabel.text = [topItems objectAtIndex:topIndex];
        
    
        cell.detailTextLabel.text = @"";
    }
    
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    BOOL isChild =
    currentExpandedIndex > -1
    && indexPath.row > currentExpandedIndex
    && indexPath.row <= currentExpandedIndex + [[subItems objectAtIndex:currentExpandedIndex] count];
    
    if (isChild) {
        NSLog(@"A child was tapped, do what you will with it");
        return;
    }
    
    [self.tblDetails beginUpdates];
    
    if (currentExpandedIndex == indexPath.row) {
        [self collapseSubItemsAtIndex:currentExpandedIndex];
        currentExpandedIndex = -1;
    }
    else {
        
        BOOL shouldCollapse = currentExpandedIndex > -1;
        
        if (shouldCollapse) {
            [self collapseSubItemsAtIndex:currentExpandedIndex];
        }
        
        currentExpandedIndex = (shouldCollapse && indexPath.row > currentExpandedIndex) ? indexPath.row - [[subItems objectAtIndex:currentExpandedIndex] count] : indexPath.row;
        
        [self expandItemAtIndex:currentExpandedIndex];
    }
    
    [self.tblDetails endUpdates];
    
}

- (void)expandItemAtIndex:(int)index {
    NSMutableArray *indexPaths = [NSMutableArray new];
    NSArray *currentSubItems = [subItems objectAtIndex:index];
    int insertPos = index + 1;
    for (int i = 0; i < [currentSubItems count]; i++) {
        [indexPaths addObject:[NSIndexPath indexPathForRow:insertPos++ inSection:0]];
    }
    [self.tblDetails insertRowsAtIndexPaths:indexPaths withRowAnimation:UITableViewRowAnimationFade];
    [self.tblDetails scrollToRowAtIndexPath:[NSIndexPath indexPathForRow:index inSection:0] atScrollPosition:UITableViewScrollPositionTop animated:YES];
}

- (void)collapseSubItemsAtIndex:(int)index {
    NSMutableArray *indexPaths = [NSMutableArray new];
    for (int i = index + 1; i <= index + [[subItems objectAtIndex:index] count]; i++) {
        [indexPaths addObject:[NSIndexPath indexPathForRow:i inSection:0]];
    }
    [self.tblDetails deleteRowsAtIndexPaths:indexPaths withRowAnimation:UITableViewRowAnimationFade];
    
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
