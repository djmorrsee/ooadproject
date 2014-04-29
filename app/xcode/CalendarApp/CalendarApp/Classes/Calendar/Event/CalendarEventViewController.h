//
//  CalendarEventViewController.h
//  CalendarApp
//
//  Created by Daniel Morrissey on 4/7/14.
//  Copyright (c) 2014 Daniel Morrissey. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CalendarEvent;

@interface CalendarEventViewController : UIViewController

@property CalendarEvent *event;

@property IBOutlet UILabel *eventName;
@property IBOutlet UILabel *eventDate;
@property IBOutlet UILabel *eventTime;

-(IBAction)deleteEvent:(id)sender;
-(IBAction)editEvent:(id)sender;
-(IBAction)backToCalendar:(id)sender;

@end
