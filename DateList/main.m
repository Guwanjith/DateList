//
//  main.m
//  DateList
//
//  Created by Guwanjith Tennekoon on 8/16/14.
//  Copyright (c) 2014 GT. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //Create 3 test dates
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24.0 * 60.0 * 60.0];
        NSDate *yesterday = [now dateByAddingTimeInterval:-24.0 * 60.0 * 60.0];
        
        //Create an empty mutable array containing all three
        NSMutableArray *dateList = [NSMutableArray array];
        
        //Add two dates to the Array
        [dateList addObject:now];
        [dateList addObject:tomorrow];

        //Add yesterday to the beginning of the Array
        [dateList insertObject:yesterday atIndex:0];
        
        //New array iteration (fast enumeration)

        for (NSDate *d in dateList){
            NSLog(@"Here is a date: %@", d);
        }
        
        //Remove yesterday
        [dateList removeObjectAtIndex:0];
        NSLog(@"Now the First date is %@", dateList[0]);
        
        
        
        /*
        //Print a couple of dates
        NSLog(@"The first date is %@", dateList[0]);
        NSLog(@"The third date is %@", dateList[2]);
        
        //How many dates are in the array?
        NSLog(@"There are %lu dates", [dateList count]);
        
        */
    }
    return 0;
}

