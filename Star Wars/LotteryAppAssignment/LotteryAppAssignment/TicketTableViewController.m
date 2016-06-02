//
//  LotteryViewController.m
//  LotteryAppAssignment
//
//  Created by Taylor Frost on 6/1/16.
//  Copyright © 2016 FrostEnterprises. All rights reserved.
//

#import "TicketTableViewController.h"
#import "Ticket.h"
#import "PickerViewController.h"

@interface TicketTableViewController ()
@property (nonatomic, strong) NSMutableArray *ticketsArray;
@property (nonatomic, strong) Ticket *winningTicket;
@end

@implementation TicketTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.ticketsArray =  [[NSMutableArray alloc] init];
    
    self.winningTicket = [self ticketWithRandomNumber];
    
    Ticket *randomT = [self ticketWithRandomNumber];
    
    if([self.winningTicket.lottoTicketString isEqualToString:randomT.lottoTicketString]){
        NSLog(@"equal");
    }else{
        NSLog(@"not egual");
    }
    
    NSLog(@"Winning Number is:@%",self.winningTicket.lottoTicketString);
}


-(Ticket *)ticketWithRandomNumber {
    Ticket *t = [[Ticket alloc] init];
    t.lottoTicketString = [self generateRandomNumberString];
    return t;

}

-(NSString *)generateRandomNumberString {
    
    int firstNumber = arc4random_uniform(53) +1;
    int secondNumber = arc4random_uniform(53) +1;
    int thirdNumber = arc4random_uniform(53) +1;
    int fourthNumber = arc4random_uniform(53) +1;
    int fifthNumber = arc4random_uniform(53) +1;
    int sixthNumber = arc4random_uniform(53) +1;
    
    return [NSString stringWithFormat:@"%i %i %i %i %i %i", firstNumber, secondNumber, thirdNumber, fourthNumber,fifthNumber, sixthNumber];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.ticketsArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TicketCell" forIndexPath:indexPath];
    
    Ticket *theTicket = [self.ticketsArray objectAtIndex:indexPath.row];
    
    cell.textLabel.text = theTicket.lottoTicketString;
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}



#pragma mark - IBAction Outlets

- (IBAction)addTicket:(UIBarButtonItem *)sender {
    
    Ticket *ticket = [[Ticket alloc] init];
    
    NSLog(@"Hello");
    
    Ticket *theTicket = [self ticketWithRandomNumber];
    [self.ticketsArray addObject:theTicket];
    [self.tableView reloadData];
    
}


- (IBAction)checkTicketTapped:(UIBarButtonItem *)sender {
    
    
    [self performSegueWithIdentifier:@"pickerSegue" sender:nil];
}



- (void) prepareForSegue:(UIStoryboardSegue *) segue sender: (id) sender {
    
    NSLog(@"prepareForSegue called @%", segue.identifier);
    
    PickerViewController *controller = segue.destinationViewController;
    
    controller.theWinningTicket = self.winningTicket;
}



@end
