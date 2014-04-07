//
//  MenuViewController.h
//  CalendarApp
//
//  Created by Daniel Morrissey on 4/7/14.
//  Copyright (c) 2014 Daniel Morrissey. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SettingsViewController;

@interface MenuViewController : UIViewController

@property SettingsViewController *settingsViewController;

- (IBAction)showCalendar:(id)sender;
- (IBAction)showSettings:(id)sender;

@end
