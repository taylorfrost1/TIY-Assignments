//
//  ViewController.m
//  OutaTime
//
//  Created by Taylor Frost on 5/26/16.
//  Copyright © 2016 FrostEnterprises. All rights reserved.
//

#import "OutaTimeController.h"

@interface OutaTimeController () {
    int milesPerHour;
}
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UITextField *dateTextField;
@property (strong, nonatomic) NSDateFormatter *formatter;
@property (weak, nonatomic) IBOutlet UILabel *milageLabel;
@property (strong, nonatomic) NSTimer *timer;
@property (weak, nonatomic) IBOutlet UILabel *lastTimeDepartedLabel;

@end

@implementation OutaTimeController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.formatter = [[NSDateFormatter alloc] init];
    
    self.formatter.dateFormat = @"MMM d, yyyy";
    
    NSDate *today = [NSDate date];
    
    NSLog(@"today == %@", today);
    
}

- (IBAction)travelBackTapped:(UIButton *)sender {
    
    NSLog(@"travelBack");
    
    self.formatter.dateFormat = @"MMddyy";
    
    NSString *theDateString = self.dateTextField.text;
    
    NSLog(@"the text field has %@", theDateString);
    
    NSDate *theDate = [self.formatter dateFromString:theDateString];
    
    NSLog(@"theDate == %@", theDate);
    
    self.formatter.dateFormat = @"MMM d, yyyy";
    
    self.dateLabel.text = [self.formatter stringFromDate:theDate];
    
    self.lastTimeDepartedLabel.text = self.dateLabel.text;
    
}

- (IBAction)travelBackButtonTimerStarted:(UIButton *)sender {
    
    milesPerHour = 0;
    
    float speed = 0.06;
    
    self.timer = [NSTimer scheduledTimerWithTimeInterval:speed target:self selector:@selector (updateMiles) userInfo:nil repeats:YES];
    
    

}

-(void) updateMiles {
    
    milesPerHour = milesPerHour + 1;
    
    if(milesPerHour == 88){
        [self.timer invalidate];
    }
    
    self.milageLabel.text = [NSString stringWithFormat:@"%i", milesPerHour];

    [self performSegueWithIdentifier:@"gigaSegue" sender:self];
    
    
}

//if(milesPerHour == 88) {

    
//}




@end
