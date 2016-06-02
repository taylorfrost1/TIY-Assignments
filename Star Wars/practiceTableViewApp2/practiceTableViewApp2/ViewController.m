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
@property (strong, nonatomic) characterClass *currentCharacter;

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
    
    [self.charactersArray addObject:pepper];
    
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [self.charactersArray count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:
(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    characterClass *theCharacter = [self.charactersArray objectAtIndex:indexPath.row];
    
    cell.textLabel.text = theCharacter.name;
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"I clicked on row %ld", indexPath.row);
    
    self.currentCharacter = [self.charactersArray objectAtIndex:indexPath.row];
    
    
    [self performSegueWithIdentifier:@"ProfileSegue" sender: nil];
    
    
}


@end
