//
//  NotificationController.h
//  CalendarApp
//
//  Created by Daniel Morrissey on 4/7/14.
//  Copyright (c) 2014 Daniel Morrissey. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CalendarEvent;

@interface NotificationController : NSObject

-(void)registerCalendarEvent:(CalendarEvent *)event;

@end
