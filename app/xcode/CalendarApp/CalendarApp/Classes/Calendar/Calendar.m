//
//  Calendar.m
//  CalendarApp
//
//  Created by Daniel Morrissey on 4/23/14.
//  Copyright (c) 2014 Daniel Morrissey. All rights reserved.
//

#import "Calendar.h"
#import "CalendarEvent.h"
#import "DatabaseController.h"
#import "AppDelegate.h"
#import "CalendarTabViewController.h"
#import "NotificationController.h"
#import "EventEditViewController.h"

@implementation Calendar

-(id)init {
    self = [super init];
    if (self) {
        self.currentDate = [NSDate date];
        [self selectDate:self.currentDate];
        [self initializeEvents];
        
    }
    return self;
}

- (void)initializeEvents {
    AppDelegate *delegate = [UIApplication sharedApplication].delegate;
    self.calendarEvents = [delegate.databaseController GetAllEvents];
}

- (void)addEvent:(CalendarEvent *)event {
    AppDelegate *delegate = [UIApplication sharedApplication].delegate;
    [delegate.databaseController SaveEvent:event];
    [delegate.notificationController registerCalendarEvent:event];
    
    [self.controller reloadAllDataViews];
}

- (void)createEventForSelectedDate {
    
    EventEditViewController *newEventVC = [[EventEditViewController alloc] init];
    newEventVC.delegate = self;
    newEventVC.startDate = self.selectedDate;
    [self.controller presentViewController:newEventVC animated:YES completion:nil];
    
}

- (void)selectDate:(NSDate *)date {
    self.selectedDate = date;
}

- (NSArray *)eventsForDay:(NSDate *)date {
    NSMutableArray *events = [[NSMutableArray alloc] init];
    
    for (CalendarEvent *event in self.calendarEvents) {
        NSDateFormatter *f = [[NSDateFormatter alloc] init];
        [f setDateFormat:@"MMddyyyy"];
        if ([[f stringFromDate:event.eventDate] isEqualToString:[f stringFromDate:date]]) {
            [events addObject:event];
        }
    }
    return events;
}


@end
