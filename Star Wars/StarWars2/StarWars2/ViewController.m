//
//  ViewController.m
//  StarWars2
//
//  Created by Taylor Frost on 5/31/16.
//  Copyright © 2016 FrostEnterprises. All rights reserved.
//

#import "ViewController.h"
#import "CharacterDetailViewController.h"
#import "StarWarsCharacter.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableViewOutlet;
@property (strong, nonatomic) NSMutableArray *charactersArray;
@property (strong, nonatomic) StarWarsCharacter *currentCharacter;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.charactersArray = [[NSMutableArray alloc] init];
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [self.charactersArray count];
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
        StarWarsCharacter *theCharacter = [self.charactersArray objectAtIndex:indexPath.row];
        cell.textLabel.text = theCharacter.name;
        return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"I clicked on row %ld", indexPath.row);
    
    //self.currentCharacter = [self.charactersArray objectAtIndex:indexPath.row];
    
    [self performSegueWithIdentifier:@"SegueToInfo" sender:nil];
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"ProfileSegue"]) {

        
        CharacterDetailViewController *characterController = (CharacterDetailViewController *)segue.destinationViewController;
        
        characterController.theCharacter = self.currentCharacter;
        
    }



}



@end
