//
//  CalendarController.h
//  CalendarApp
//
//  Created by Daniel Morrissey on 4/7/14.
//  Copyright (c) 2014 Daniel Morrissey. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CalendarMonthViewController;
@class CalendarWeekViewController;
@class CalendarDayViewController;

@interface CalendarController : NSObject

@property CalendarMonthViewController *monthViewController;
@property CalendarWeekViewController *weekViewController;
@property CalendarDayViewController *dayViewController;

@property NSMutableArray *calendarEvents;

- (void)showCalendar;

- (void)showMonthView;
- (void)showWeekView;
- (void)showDayView;

@end
