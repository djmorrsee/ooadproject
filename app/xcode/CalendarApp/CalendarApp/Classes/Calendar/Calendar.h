//
//  Calendar.h
//  CalendarApp
//
//  Created by Daniel Morrissey on 4/23/14.
//  Copyright (c) 2014 Daniel Morrissey. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calendar : NSObject

@property NSDate *currentDate;
@property NSDate *selectedDate;

@property NSMutableArray *calendarEvents;

- (void)createEventForSelectedDate;

@end
