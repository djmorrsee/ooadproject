//
//  Calendar.h
//  CalendarApp
//
//  Created by Daniel Morrissey on 4/23/14.
//  Copyright (c) 2014 Daniel Morrissey. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CalendarEvent;
@class CalendarDayViewController;
@class CalendarTabViewController;

@interface Calendar : NSObject

@property (weak) CalendarTabViewController *controller;

@property NSDate *currentDate;
@property NSDate *selectedDate;

@property NSArray *calendarEvents;

- (void)createEventForSelectedDate;

- (void)initializeEvents;
- (void)addEvent:(CalendarEvent *)event;

- (void)selectDate:(NSDate *)date;


- (NSArray *)eventsForDay:(NSDate *)date;

@end
