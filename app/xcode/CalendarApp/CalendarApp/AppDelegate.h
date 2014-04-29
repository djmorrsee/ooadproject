//
//  AppDelegate.h
//  CalendarApp
//
//  Created by Daniel Morrissey on 3/16/14.
//  Copyright (c) 2014 Daniel Morrissey. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MenuViewController;
@class CalendarTabViewController;
@class DatabaseController;
@class NotificationController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

@property MenuViewController *menuViewController;
@property CalendarTabViewController *calendarTabViewController;
@property DatabaseController *databaseController;
@property NotificationController *notificationController;

- (void)showCalendar;
- (void)loadCalendarEvents;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
