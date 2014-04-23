//
//  Calendar.m
//  CalendarApp
//
//  Created by Daniel Morrissey on 4/23/14.
//  Copyright (c) 2014 Daniel Morrissey. All rights reserved.
//

#import "Calendar.h"
#import "CalendarEvent.h"

@implementation Calendar

- (void)createEventForSelectedDate {
    
    UIAlertView *view = [[UIAlertView alloc] initWithTitle:@"New Event" message:@"" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Done", nil];
    view.alertViewStyle = UIAlertViewStylePlainTextInput;
    [view show];
}

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
            break;
        default:
            break;
    }
}


@end
