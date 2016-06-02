//
//  LotteryViewController.m
//  LotteryAppAssignment
//
//  Created by Taylor Frost on 6/1/16.
//  Copyright © 2016 FrostEnterprises. All rights reserved.
//

#import "TicketTableViewController.h"
#import "Ticket.h"

@interface TicketTableViewController ()
@property (nonatomic, strong) NSMutableArray *ticketsArray;
@property (nonatomic, strong) Ticket *winningTicket;
@property (nonatomic, strong) Ticket *randomTicket;
@end

@implementation TicketTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self  chooseWinningTicket];
    
    self.ticketsArray =  [[NSMutableArray alloc] init];
 
}

-(void) chooseWinningTicket {
    
    self.winningTicket = [[Ticket alloc] init];
    
    
    self.winningTicket.lotteryTicket =@"1 2 3 4 5 6";

}


#pragma mark - Table view delegate methods

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
     return self.ticketsArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TicketCell" forIndexPath:indexPath];
    Ticket *theTicket = [self.ticketsArray objectAtIndex:indexPath.row];
    
    cell.textLabel.text = theTicket.lotteryTicket;
    
    return cell;
    
}

#pragma mark - IBAction Outlets
- (IBAction)addTicket:(UIBarButtonItem *)sender {
    
    
    Ticket *ticket = [[Ticket alloc] init];
//    ticket.lastName =@"Frost";
//    ticket.firstName =@"Taylor";
    ticket.lotteryTicket =@"1 5 6 7 82 2 5";
    
    [self.ticketsArray addObject:ticket];
    
    [self.tableView reloadData];
}

- (IBAction)checkTicketTapped:(UIBarButtonItem *)sender {
    
    
    [self performSegueWithIdentifier:@"PickerSegue" sender:self];
}

-(void)generateRandomTicket {
    
    [self generateRandomTicket];
    
    self.randomTicket = [[Ticket alloc] init];
    
    arc4random_uniform(53) +1;
    
    //This function should include the random numbers
    for (int i = [self lotteryTicket] - 1; i >= 1; i--) {
        int j = arc4random() % (i + 1);
        [self exchangeObjectAtIndex:j withObjectAtIndex:i];
    }

        NSInteger minValue = 0;
        
        NSInteger maxValue = 53;
        
        NSInteger firstValue = 1;
        
        NSMutableArray *hello = [NSMutableArray lotteryTicket];
        for (int i = minValue; i < firstValue; i++) {
            [randomTicket addObject:[NSNumber numberWithInt:i]];
        }

    [randomTicket shuffle];
    
    [randomTicket insertObject:[NSNumber numberWithInt:firstValue] atIndex:0];
    
}








@end
