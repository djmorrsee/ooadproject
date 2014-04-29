//
//  CalendarDayViewController.m
//  CalendarApp
//
//  Created by Daniel Morrissey on 4/7/14.
//  Copyright (c) 2014 Daniel Morrissey. All rights reserved.
//

#import "CalendarTabViewController.h"
#import "CalendarDayViewController.h"
#import "CalendarEvent.h"
#import "CalendarEventViewController.h"
#import "Calendar.h"


//@interface CalendarDayViewController ()

//@end

@implementation CalendarDayViewController

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

}


- (void)viewWillAppear:(BOOL)animated {
    
    [self.cal.controller reloadAllDataViews];

    [self changeDateLabel];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)changeDateLabel {
    // Set the Label
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"MM-dd-yyyy"];
    
    self.dateLabel.text = [NSString stringWithFormat:@"%@", [formatter stringFromDate:self.cal.selectedDate]];
}

- (void)displaySelectedDate {
    
}

-(IBAction)nextDay:(id)sender {
    NSDate *next = [NSDate dateWithTimeInterval:60*60*24 sinceDate:self.cal.selectedDate];
    self.cal.selectedDate = next;
    
    [self.cal.controller reloadAllDataViews];
    [self changeDateLabel];
}

-(IBAction)prevDay:(id)sender {
    NSDate *next = [NSDate dateWithTimeInterval:-60*60*24 sinceDate:self.cal.selectedDate];
    self.cal.selectedDate = next;
    
    [self.cal.controller reloadAllDataViews];
    [self changeDateLabel];
}

-(void)now:(id)sender {
    self.cal.selectedDate = [NSDate date];
    
    [self.cal.controller reloadAllDataViews];
    [self changeDateLabel];
}

// Table Code
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[self.cal eventsForDay:self.cal.selectedDate] count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.textLabel.text = ((CalendarEvent *)[[self.cal eventsForDay:self.cal.selectedDate] objectAtIndex:[indexPath row]]).eventTitle;
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    CalendarEvent *selectedEvent = [self.cal.calendarEvents objectAtIndex:[indexPath row]];
    CalendarEventViewController *eventVC = [[CalendarEventViewController alloc] init];
    [eventVC setEvent:selectedEvent];
    [self presentViewController:eventVC animated:YES completion:nil];
}

@end
