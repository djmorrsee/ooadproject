//
//  CalendarEventViewController.m
//  CalendarApp
//
//  Created by Daniel Morrissey on 4/7/14.
//  Copyright (c) 2014 Daniel Morrissey. All rights reserved.
//

#import "CalendarEventViewController.h"
#import "CalendarEvent.h"

@interface CalendarEventViewController ()

@end

@implementation CalendarEventViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setLabels {
    self.eventName.text = self.event.eventTitle;
    self.eventDate.text = [NSDateFormatter localizedStringFromDate:self.event.eventDate dateStyle:NSDateFormatterShortStyle timeStyle:NSDateFormatterNoStyle];
}

@end
