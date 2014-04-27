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

@interface CalendarDayViewController ()

@end

@implementation CalendarDayViewController

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

NSArray *events;

- (void)viewWillAppear:(BOOL)animated {
    NSMutableArray *strings = [[NSMutableArray alloc] init];
    for(CalendarEvent *event in self.cal.calendarEvents)
    {
        [strings addObject:event.eventTitle];
    }
    
    tableData = strings;
}

  //  tableData = [NSArray arrayWithObjects:, nil];}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)displaySelectedDate {
    
}

NSArray *tableData;

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [tableData count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *simpleTableIdentifier = @"SimpleTableItentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
    return cell;
    
}

- (void)tableData:(UITableView *)tableData didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableData deselectRowAtIndexPath:indexPath animated:YES];
    
    //[self.navigationController pushViewController:EVENTVIEW animated:YES];}
}
@end
