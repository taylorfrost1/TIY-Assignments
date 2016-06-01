//
//  ViewController.m
//  practiceTableViewApp2
//
//  Created by Taylor Frost on 6/1/16.
//  Copyright © 2016 FrostEnterprises. All rights reserved.
//

#import "ViewController.h"
#import "characterClass.h"

@interface ViewController ()
@property (strong, nonatomic) NSMutableArray *charactersArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.charactersArray = [[NSMutableArray alloc] init];
    
    characterClass *taylor = [[characterClass alloc] init];
    taylor.name = @"Taylor Frost";
    taylor.spaceship = @"Sun Ship";
    
    [self.charactersArray addObject:taylor];
    
    characterClass *abbey = [[characterClass alloc] init];
    abbey.name = @"Abbey Frost";
    abbey.spaceship = @"Sun Ship 2";
    
    [self.charactersArray addObject:abbey];
    
    characterClass *pepper = [[characterClass alloc] init];
    pepper.name = @"Pepper Frost";
    pepper.spaceship = @"Sun Ship 3";
    
    
}


@end
