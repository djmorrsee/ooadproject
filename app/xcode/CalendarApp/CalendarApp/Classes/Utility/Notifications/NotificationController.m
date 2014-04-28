//
//  NotificationController.m
//  CalendarApp
//
//  Created by Daniel Morrissey on 4/7/14.
//  Copyright (c) 2014 Daniel Morrissey. All rights reserved.
//

#import "NotificationController.h"
#import "CalendarEvent.h"

@implementation NotificationController

-(void)registerCalendarEvent:(CalendarEvent *)event {
    UILocalNotification *notification = [[UILocalNotification alloc] init];
    notification.fireDate = event.eventDate;
    notification.alertBody = event.eventTitle;
    notification.timeZone = [NSTimeZone defaultTimeZone];
    notification.soundName = UILocalNotificationDefaultSoundName;
    
    [[UIApplication sharedApplication] scheduleLocalNotification:notification];
    
}

@end
