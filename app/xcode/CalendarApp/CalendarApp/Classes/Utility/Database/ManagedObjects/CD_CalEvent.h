//
//  CD_CalEvent.h
//  CalendarApp
//
//  Created by Daniel Morrissey on 4/27/14.
//  Copyright (c) 2014 Daniel Morrissey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface CD_CalEvent : NSManagedObject

@property (nonatomic, retain) NSString * label;
@property (nonatomic, retain) NSDate * date;

@end
