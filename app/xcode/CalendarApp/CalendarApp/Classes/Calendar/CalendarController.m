//
//  CalendarController.m
//  CalendarApp
//
//  Created by Daniel Morrissey on 4/7/14.
//  Copyright (c) 2014 Daniel Morrissey. All rights reserved.
//

#import "CalendarController.h"

@implementation CalendarController

-(id)init {
    self = [super init];
    if (self) {
        self.calendarEvents = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)showCalendar {
    NSLog(@"Calendar Shown!");
}


- (void)showMonthView {
    
}
- (void)showWeekView {
    
}
- (void)showDayView {
    
}

@end
