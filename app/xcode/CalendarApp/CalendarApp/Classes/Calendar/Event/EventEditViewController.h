//
//  EventEditViewController.h
//  CalendarApp
//
//  Created by Daniel Morrissey on 4/29/14.
//  Copyright (c) 2014 Daniel Morrissey. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Calendar;
@class CalendarEvent;

@interface EventEditViewController : UIViewController <UITextFieldDelegate>

@property Calendar *delegate;

@property CalendarEvent *existingEvent;

@property IBOutlet UITextField *nameField;
@property IBOutlet UIDatePicker *datePicker;

@property NSDate *startDate;

-(IBAction)accept:(id)sender;
-(IBAction)cancel:(id)sender;

@end
