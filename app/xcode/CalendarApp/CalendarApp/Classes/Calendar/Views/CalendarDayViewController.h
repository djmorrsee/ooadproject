//
//  CalendarDayViewController.h
//  CalendarApp
//
//  Created by Daniel Morrissey on 4/7/14.
//  Copyright (c) 2014 Daniel Morrissey. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalendarViewController.h"

@interface CalendarDayViewController : CalendarViewController <UITableViewDelegate, UITableViewDataSource>{
    NSMutableArray *tableData;
    }

@property (nonatomic, retain) NSArray *tableData;

@end
