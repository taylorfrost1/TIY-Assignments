//
//  ViewController.m
//  agentApp
//
//  Created by Taylor Frost on 5/24/16.
//  Copyright © 2016 FrostEnterprises. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSString *uname;
}
@property (weak, nonatomic) IBOutlet UITextField *usernameTextField;
@property (weak, nonatomic) IBOutlet UIButton *authenticateButton;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UILabel *greetingLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    uname = @"Frost";
    
    
    
}
- (IBAction)authenticateTapped:(UIButton *)sender {
    if ([self.usernameTextField.text isEqualToString:@"Taylor Frost"] && [self.passwordTextField.text
         isEqualToString:@"111111"]) {
        
            self.view.backgroundColor = [UIColor greenColor];
        
                self.greetingLabel.text = [NSString stringWithFormat:@"Good evening, Agent %@", uname];

        
        
        
    }   else {
        self.view.backgroundColor = [UIColor redColor];
    
    }
    
}
@end
