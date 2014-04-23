//
//  CalendarViewController.h
//  CalendarApp
//
//  Created by Daniel Morrissey on 4/23/14.
//  Copyright (c) 2014 Daniel Morrissey. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Calendar;

@interface CalendarViewController : UIViewController

@property (weak) Calendar *cal;

- (void)displaySelectedDate;

@end
