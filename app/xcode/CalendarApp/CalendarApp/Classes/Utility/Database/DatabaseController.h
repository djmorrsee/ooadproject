//
//  DatabaseController.h
//  CalendarApp
//
//  Created by Daniel Morrissey on 4/7/14.
//  Copyright (c) 2014 Daniel Morrissey. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CalendarEvent;

@interface DatabaseController : NSObject

@property NSManagedObjectContext *managedObjectContext;

- (void)SaveEvent:(CalendarEvent *)event;
- (void)DeleteEvent:(CalendarEvent *)event;

- (NSArray *)GetEventsForDate:(NSDate *)date;
- (NSArray *)GetAllEvents;

@end
