//
//  CalendarDayViewController.h
//  CalendarApp
//
//  Created by Daniel Morrissey on 4/7/14.
//  Copyright (c) 2014 Daniel Morrissey. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalendarViewController.h"


@interface CalendarDayViewController : CalendarViewController <UITableViewDataSource, UITableViewDelegate>

@property IBOutlet UILabel *dateLabel;
@property IBOutlet UITableView *tableView;

-(IBAction)now:(id)sender;

-(IBAction)nextDay:(id)sender;
-(IBAction)prevDay:(id)sender;

@end
