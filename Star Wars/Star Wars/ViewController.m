//
//  ViewController.m
//  Star Wars
//
//  Created by Taylor Frost on 5/31/16.
//  Copyright © 2016 FrostEnterprises. All rights reserved.
//

#import "ViewController.h"
#import "StarWarsCharacter.h"
#import "ProfileViewController.h"

@interface ViewController () <UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSMutableArray *charactersArray;
@property (strong, nonatomic) StarWarsCharacter *currentCharacter;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.charactersArray = [[NSMutableArray alloc] init];
    
    StarWarsCharacter *l = [[StarWarsCharacter alloc] init];
    l.name =@"Luke Skywalker";
    l.spaceship =@"X-Wing";
    
    [self.charactersArray addObject:l];
    
    StarWarsCharacter *leia = [[StarWarsCharacter alloc] init];
    leia.name = @"Princess Leia";
    leia.spaceship = @"X-Wing Fighter";
    
    [self.charactersArray addObject:leia];
    
    StarWarsCharacter *anakin = [[StarWarsCharacter alloc] init];
    
    anakin.name = @"Anakin Skywalker";
    anakin.spaceship = @"Tie Fighter";
    
    [self.charactersArray addObject:anakin];
    
    StarWarsCharacter *kenobi = [[StarWarsCharacter alloc] init];
    
    kenobi.name = @"Obiwon Kenobi";
    
    kenobi.spaceship = @"X-Wing Fighter";
    
    [self.charactersArray addObject:kenobi];
    
    StarWarsCharacter *yoda = [[StarWarsCharacter alloc] init];
    
    yoda.name = @"Yoda";
    
    yoda.spaceship = @"X-Wing Fighter";
    
    [self.charactersArray addObject:yoda];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [self.charactersArray count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:
(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    StarWarsCharacter *theCharacter = [self.charactersArray objectAtIndex:indexPath.row];
    
    cell.textLabel.text = theCharacter.name;
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"I clicked on row %ld", indexPath.row);
    
    self.currentCharacter = [self.charactersArray objectAtIndex:indexPath.row];

    
    [self performSegueWithIdentifier:@"ProfileSegue" sender: nil];
    
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    
    
    if ([segue.identifier isEqualToString:@"ProfileSegue"]) {
        
       
        ProfileViewController *profileController = (ProfileViewController *)segue.destinationViewController;
        
        profileController.theCharacter = self.currentCharacter;
        

        
        
        
    }
}

@end
