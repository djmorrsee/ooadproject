//
//  DatabaseController.m
//  CalendarApp
//
//  Created by Daniel Morrissey on 4/7/14.
//  Copyright (c) 2014 Daniel Morrissey. All rights reserved.
//

#import "DatabaseController.h"
#import "CD_CalEvent.h"
#import "AppDelegate.h"
#import "CalendarEvent.h"

@implementation DatabaseController

-(id)init {
    self = [super init];
    if (self) {
        AppDelegate *delegate = [UIApplication sharedApplication].delegate;
        self.managedObjectContext = delegate.managedObjectContext;
    }
    return self;
}

- (void)SaveEvent:(CalendarEvent *)event {
    CD_CalEvent *cd_event = [NSEntityDescription insertNewObjectForEntityForName:@"CD_CalEvent" inManagedObjectContext:self.managedObjectContext];
    
    cd_event.label = event.eventTitle;
    cd_event.date = event.eventDate;
    
    
    NSError *error;
    if (![self.managedObjectContext save:&error]) {
        NSLog(@"Error Saving Event To File %@", [error localizedDescription]);
    }
    
}

- (void)DeleteEvent:(CalendarEvent *)event {
    
}

- (NSArray *)GetEventsForDate:(NSDate *)date {
    
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"CD_CalEvent" inManagedObjectContext:self.managedObjectContext];
    
    [fetchRequest setEntity:entity];
    
    NSPredicate *dateFilter = [NSPredicate predicateWithFormat:@"date like %@", date];
    [fetchRequest setPredicate:dateFilter];
    
    
    NSError *error;
    NSArray *fetchedRecords = [self.managedObjectContext executeFetchRequest:fetchRequest error:&error];
    
    NSArray *events = [self CalendarEventsFromCDEvents:fetchedRecords];
    
    return events;
}

- (NSArray *)GetAllEvents {

    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
    
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"CD_CalEvent" inManagedObjectContext:self.managedObjectContext];
    
    [fetchRequest setEntity:entity];
    
    NSError *error;
    NSArray *fetchedRecords = [self.managedObjectContext executeFetchRequest:fetchRequest error:&error];
    
    NSArray *events = [self CalendarEventsFromCDEvents:fetchedRecords];
    
    return events;
}

- (NSArray *)CalendarEventsFromCDEvents:(NSArray *)events {
    NSMutableArray *cal_events = [[NSMutableArray alloc] init];
    for (CD_CalEvent *cd_event in events) {
        CalendarEvent *newEvent = [[CalendarEvent alloc] init];
        newEvent.eventTitle = cd_event.label;
        newEvent.eventDate = cd_event.date;
        [cal_events addObject:newEvent];
    }
    return cal_events;
}

@end
