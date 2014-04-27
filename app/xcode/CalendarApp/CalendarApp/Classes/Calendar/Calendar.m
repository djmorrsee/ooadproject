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

@implementation Calendar

-(id)init {
    self = [super init];
    if (self) {
        
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
    
    [self initializeEvents];
}

- (void)createEventForSelectedDate {
    UIAlertView *view = [[UIAlertView alloc] initWithTitle:@"New Event" message:@"" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Done", nil];
    view.alertViewStyle = UIAlertViewStylePlainTextInput;
    [view show];
}

- (void)selectDate:(NSDate *)date {
    self.selectedDate = date;
}

# pragma mark - Delegate Methods
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    CalendarEvent *event;
    switch (buttonIndex) {
        case 0:
            // Cancelled, Do Nothing
            
            break;
        case 1:
            // New Event
            event = [[CalendarEvent alloc] init];
            event.eventDate = self.selectedDate;
            event.eventTitle = [[alertView textFieldAtIndex:0] text];
            [self addEvent:event];
            break;
        default:
            break;
    }
}

@end
