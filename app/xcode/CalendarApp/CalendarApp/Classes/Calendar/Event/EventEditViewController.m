//
//  EventEditViewController.m
//  CalendarApp
//
//  Created by Daniel Morrissey on 4/29/14.
//  Copyright (c) 2014 Daniel Morrissey. All rights reserved.
//

#import "EventEditViewController.h"
#import "CalendarEvent.h"
#import "Calendar.h"
#import "AppDelegate.h"
#import "DatabaseController.h"

@interface EventEditViewController ()

@end

@implementation EventEditViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.nameField.delegate = self;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

-(void)viewWillAppear:(BOOL)animated {
    if (self.existingEvent != NULL) {
        self.nameField.text = self.existingEvent.eventTitle;
        self.datePicker.date = self.existingEvent.eventDate;
    } else {
        self.datePicker.date = self.startDate;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)accept:(id)sender {

    if ([self.nameField.text isEqualToString:@""]) {
        UIAlertView *a = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Enter an Event Name" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [a show];
        return;
    }
    
    CalendarEvent *newEvent = [[CalendarEvent alloc] init];
    newEvent.eventTitle = self.nameField.text;
    newEvent.eventDate = [self.datePicker date];
    
    [self.delegate addEvent:newEvent];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(IBAction)cancel:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(BOOL) textFieldShouldReturn: (UITextField *) textField {
    [textField resignFirstResponder];
    return YES;
}

-(IBAction)textfieldReturn:(id)sender {
    
}

@end
