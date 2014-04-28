//
//  CalendarViewController.m
//  CalendarApp
//
//  Created by Daniel Morrissey on 4/11/14.
//  Copyright (c) 2014 Daniel Morrissey. All rights reserved.
//

#import "Calendar.h"
#import "CalendarEvent.h"
#import "CalendarController.h"
#import "CalendarDayViewController.h"
#import "CalendarWeekViewController.h"
#import "CalendarMonthViewController.h"


@interface CalendarController ()

@end

@implementation CalendarController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.dayViewController = [[CalendarDayViewController alloc] initWithNibName:@"CalendarDayViewController" bundle:nil];
        self.weekViewController = [[CalendarWeekViewController alloc] initWithNibName:@"CalendarWeekViewController" bundle:nil];
        self.monthViewContorller = [[CalendarMonthViewController alloc] initWithNibName:@"CalendarMonthViewController" bundle:nil];
        
        [self loadCalendar];
        [self.dayViewController setCal:self.cal];
        [self.weekViewController setCal:self.cal];
        [self.monthViewContorller setCal:self.cal];
        

        [self sizeViews];
    }
    return self;
}

- (void)loadCalendar {
    // Eventually will load from database/file
    Calendar *newcal = [[Calendar alloc] init];
    self.cal = newcal;
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [self showMonth:nil];
    
}

- (void)sizeViews
{
    self.dayViewController.view.frame = self.calendarView.frame;
    self.dayViewController.view.bounds = self.calendarView.bounds;
    
    self.weekViewController.view.frame = self.calendarView.frame;
    self.weekViewController.view.bounds = self.calendarView.bounds;
    
    self.monthViewContorller.view.frame = self.calendarView.frame;
    self.monthViewContorller.view.bounds = self.calendarView.bounds;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)removeViews {
    for (UIView *v in [self.calendarView subviews]) {
        [v removeFromSuperview];
    }
}

NSArray *monthList;

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [monthList count];
}

#pragma mark - Interface Actions
-(IBAction)showDay:(id)sender {
    [self removeViews];
    [self.calendarView addSubview:self.dayViewController.view];
}

-(IBAction)showWeek:(id)sender {
    [self removeViews];
    [self.calendarView addSubview:self.weekViewController.view];
}

-(IBAction)showMonth:(id)sender {
    [self removeViews];
    [self.calendarView addSubview:self.monthViewContorller.view];
}

-(IBAction)backToMenu:(id)sender {
    [self dismissViewControllerAnimated:YES completion:NO];
}

-(IBAction)addEvent:(id)sender {
    [self.cal createEventForSelectedDate];
}


#pragma mark - Delegate Actions


@end
