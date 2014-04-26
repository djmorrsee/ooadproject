//
//  CalendarEvent.h
//  CalendarApp
//
//  Created by Daniel Morrissey on 4/7/14.
//  Copyright (c) 2014 Daniel Morrissey. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalendarEvent : NSObject

@property NSDate *eventDate;
@property NSString *eventTitle;

typedef struct {
    NSUInteger year;
    NSUInteger month;
    NSUInteger day;
} CurrentDate;

@end
