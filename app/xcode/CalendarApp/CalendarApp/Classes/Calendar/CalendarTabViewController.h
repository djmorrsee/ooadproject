//
//  CalendarTabViewController.h
//  CalendarApp
//
//  Created by Daniel Morrissey on 4/29/14.
//  Copyright (c) 2014 Daniel Morrissey. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Calendar;
@class CalendarDayViewController;
@class CalendarWeekViewController;
@class CalendarMonthViewController;

@interface CalendarTabViewController : UITabBarController

@property Calendar *cal;

@property CalendarDayViewController *dayViewController;
@property CalendarWeekViewController *weekViewController;
@property CalendarMonthViewController *monthViewContorller;

- (void)reloadAllDataViews;

@end
