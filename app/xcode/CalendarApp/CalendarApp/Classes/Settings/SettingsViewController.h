//
//  SettingsViewController.h
//  CalendarApp
//
//  Created by Daniel Morrissey on 4/7/14.
//  Copyright (c) 2014 Daniel Morrissey. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GlobalSettings;

@interface SettingsViewController : UIViewController

@property GlobalSettings *globalSettings;

- (IBAction)backToMenu:(id)sender;

@end
