//
//  ViewController.m
//  GMT
//
//  Created by Gabriel Massana on 23/04/2014.
//  Copyright (c) 2014 Gabriel Massana. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)option1:(id)sender
{
    NSDate *localDate = [NSDate date];
    
    NSTimeInterval secondsInFourHours = -4 * 60 * 60;
    NSDate *dateThreeHoursAhead = [localDate dateByAddingTimeInterval:secondsInFourHours];
    NSDateFormatter *dt = [[NSDateFormatter alloc] init];
    [dt setDateFormat:@"h:mm a"];
    
    NSLog(@"GMT+7(-4) = %@", [dt stringFromDate:dateThreeHoursAhead]);
}

- (IBAction)option2:(id)sender
{
    NSDate *localDate = [NSDate date];
    
    NSTimeInterval secondsInThreeHours = 3 * 60 * 60;
    NSDate *dateThreeHoursAhead = [localDate dateByAddingTimeInterval:secondsInThreeHours];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    NSTimeZone *timeZone = [NSTimeZone timeZoneWithName:@"GMT"];
    [dateFormatter setTimeZone:timeZone];
    [dateFormatter setDateFormat:@"h:mm a"];
    NSString *date = [dateFormatter stringFromDate:dateThreeHoursAhead];
    NSLog(@"GMT+3 = %@", date);

}
- (IBAction)option3:(id)sender
{
    NSDate *localDate = [NSDate date];

    NSDateFormatter *dt = [[NSDateFormatter alloc] init];
    [dt setDateFormat:@"h:mm a"];
    NSTimeZone *timeZone = [NSTimeZone timeZoneWithName:@"EAT"];
    [dt setTimeZone:timeZone];
    NSLog(@"EAT = %@", [dt stringFromDate:localDate]);
}



@end
