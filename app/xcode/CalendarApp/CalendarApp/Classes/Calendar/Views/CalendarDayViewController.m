//
//  CalendarDayViewController.m
//  CalendarApp
//
//  Created by Daniel Morrissey on 4/7/14.
//  Copyright (c) 2014 Daniel Morrissey. All rights reserved.
//

#import "CalendarDayViewController.h"
#import "CalendarEvent.h"
#import "Calendar.h"

//@interface CalendarDayViewController ()

//@end

@implementation CalendarDayViewController
@synthesize tableData;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        NSLog(@"Init Day");
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

}


- (void)viewWillAppear:(BOOL)animated {
    
    NSMutableArray *strings = [[NSMutableArray alloc] init];
    for(CalendarEvent *event in self.cal.calendarEvents)
    {
        [strings addObject:event.eventTitle];
    }
    
    tableData = strings;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [tableData count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
    return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	NSString *message = [NSString stringWithFormat:@"You selected %@",[tableData objectAtIndex:indexPath.row]];
	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert"
													message: message delegate:self cancelButtonTitle:@"Close" otherButtonTitles:nil];
	[alert show];
}

- (void)displaySelectedDate {
    
}


@end
