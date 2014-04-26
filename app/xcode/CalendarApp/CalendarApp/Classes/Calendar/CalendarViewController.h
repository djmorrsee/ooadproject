//
//  CalendarViewController.h
//  CalendarApp
//
//  Created by Daniel Morrissey on 4/23/14.
//  Copyright (c) 2014 Daniel Morrissey. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Calendar;

@interface CalendarViewController : UIViewController

@property (weak) Calendar *cal;

- (void)displaySelectedDate;

@property (nonatomic, strong) NSDate *firstDate;

@property (nonatomic, strong) NSDate *lastDate;

@property (nonatomic, strong) NSDate *selectedDate;

@property (nonatomic, strong) NSCalendar *calendar;

@end


