//
//  ProfileViewController.m
//  Star Wars
//
//  Created by Taylor Frost on 5/31/16.
//  Copyright © 2016 FrostEnterprises. All rights reserved.
//

#import "ProfileViewController.h"


@interface ProfileViewController ()
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *spaceShipLabel;

@end

@implementation ProfileViewController

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:YES];
    
    self.nameLabel.text = self.theCharacter.name;
    self.spaceShipLabel.text = self.theCharacter.spaceship;
   
    

}
    





@end
