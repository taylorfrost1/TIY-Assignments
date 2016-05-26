//
//  ViewController.m
//  day3Assignment
//
//  Created by Taylor Frost on 5/25/16.
//  Copyright © 2016 FrostEnterprises. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self printGreeting:@"Nice to meet you"];
    [self printGreetingTo: @"Taylor" atTimeOfDay: @"6:30"];
   
    NSString *nextString = [self greetingWithName:@"Taylor"];
    NSLog(@"nextString == %@", nextString);
    
    
    NSString *next2String = [self greetingWithFullName:@"Hello Taylor"];
    NSLog(@"next2String == %@", next2String);
    
    
    NSString *next3String = [self greetingAtTimeOfDay:@"5"];
    NSLog(@"next3String == %@", next3String);
    
    NSString *next4String = [self greetingWithBand:@"Hello there" bandName: "ACDC"];
    NSLog(@"next4String == %@", next4String);
    
    NSString *next5String = [self stringWithName:@"Hello I'm Taylor"];
    NSLog(@"next5String == %@, next5String");
    
    NSString *next6String = [self stringWithBand:@"ACDC is great" withLeadSinger:@"John Lenin" withBassPlayer:@"Joe Blow"];
    
    
    
    }
-(void)printGreeting:(NSString *)greeting{
    NSLog(@"%@", greeting);
}
-(void)printGreetingTo: (NSString *)name atTimeOfDay:(NSString *)timeOfDayString {
    NSLog(@" %@ %@", name, timeOfDayString);
}
-(NSString *)greetingWithName:(NSString *)name {
    return [NSString stringWithFormat:@"Hello, @%", name];
}
-(NSString *)greetingWithFullName: (NSString *)fullName {
    return [NSString stringWithFormat:@"Nice to meet you, @%", fullName];
}
-(NSString *)greetingAtTimeOfDay:(NSString *)timeOfDay {
    return [NSString stringWithFormat:@"Howdy, %@", timeOfDay];
    
}
-(NSString *)greetingWithBand:(NSString *)bandName withOpeningBand:(NSString *)openBand {
    return [NSString stringWithFormat:@"I am seeing, %@ %@", bandName, openBand];
    
}
-(NSString *)stringWithName:(NSString *)name age:(float)age {
    return [NSString stringWithFormat:@"23", age];
}
-(NSString *)stringWithBand:(NSString *)bandName withLeadSinger:(NSString *)leadSinger withBassPlayer:(NSString *)bassPlayer {
    return [NSString stringWithFormat:@"Nice to see you, %@ %@", bandName, leadSinger];
}



@end
