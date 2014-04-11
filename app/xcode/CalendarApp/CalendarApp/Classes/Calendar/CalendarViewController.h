//
//  CalendarViewController.h
//  CalendarApp
//
//  Created by Daniel Morrissey on 4/11/14.
//  Copyright (c) 2014 Daniel Morrissey. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CalendarDayViewController;
@class CalendarWeekViewController;
@class CalendarMonthViewController;

@interface CalendarViewController : UIViewController

@property IBOutlet UIView *calendarView;

@property CalendarDayViewController *dayViewController;
@property CalendarWeekViewController *weekViewController;
@property CalendarMonthViewController *monthViewContorller;

-(IBAction)showDay:(id)sender;
-(IBAction)showWeek:(id)sender;
-(IBAction)showMonth:(id)sender;

-(IBAction)backToMenu:(id)sender;

@end
