//
//  CalendarTabViewController.m
//  CalendarApp
//
//  Created by Daniel Morrissey on 4/29/14.
//  Copyright (c) 2014 Daniel Morrissey. All rights reserved.
//

#import "Calendar.h"
#import "CalendarEvent.h"
#import "CalendarTabViewController.h"
#import "CalendarDayViewController.h"
#import "CalendarWeekViewController.h"
#import "CalendarMonthViewController.h"

@interface CalendarTabViewController ()

@end

@implementation CalendarTabViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.dayViewController = [[CalendarDayViewController alloc] initWithNibName:@"CalendarDayViewController" bundle:nil];
        self.weekViewController = [[CalendarWeekViewController alloc] initWithNibName:@"CalendarWeekViewController" bundle:nil];
        self.monthViewContorller = [[CalendarMonthViewController alloc] initWithNibName:@"CalendarMonthViewController" bundle:nil];
        
         self.dayViewController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Day" image:[UIImage imageNamed:@"day.png"] tag:0];
         self.weekViewController.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Week" image:[UIImage imageNamed:@"week.png"] tag:0];
         self.monthViewContorller.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Month" image:[UIImage imageNamed:@"month.png"] tag:0];
        
        [self loadCalendar];
        [self.dayViewController setCal:self.cal];
        [self.weekViewController setCal:self.cal];
        [self.monthViewContorller setCal:self.cal];
        
        self.viewControllers = [NSArray arrayWithObjects:self.dayViewController, self.weekViewController, self.monthViewContorller, nil];
        
    }
    return self;
}

- (void)loadCalendar {
    // Eventually will load from database/file
    Calendar *newcal = [[Calendar alloc] init];
    newcal.controller = self;
    self.cal = newcal;
    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)reloadAllDataViews {
    [self.cal initializeEvents];
    [self.dayViewController.tableView reloadData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
