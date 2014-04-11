//
//  CalendarViewController.m
//  CalendarApp
//
//  Created by Daniel Morrissey on 4/11/14.
//  Copyright (c) 2014 Daniel Morrissey. All rights reserved.
//

#import "CalendarViewController.h"
#import "CalendarDayViewController.h"
#import "CalendarWeekViewController.h"
#import "CalendarMonthViewController.h"


@interface CalendarViewController ()

@end

@implementation CalendarViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.dayViewController = [[CalendarDayViewController alloc] initWithNibName:@"CalendarDayViewController" bundle:nil];
        self.weekViewController = [[CalendarWeekViewController alloc] initWithNibName:@"CalendarWeekViewController" bundle:nil];
        self.monthViewContorller = [[CalendarMonthViewController alloc] initWithNibName:@"CalendarMonthViewController" bundle:nil];

        [self sizeViews];
    }
    return self;
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


@end
