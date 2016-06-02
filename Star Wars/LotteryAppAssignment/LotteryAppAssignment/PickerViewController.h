//
//  PickerViewController.h
//  LotteryAppAssignment
//
//  Created by Taylor Frost on 6/1/16.
//  Copyright © 2016 FrostEnterprises. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Ticket.h"

@interface PickerViewController : UIViewController
@property (strong, nonatomic) Ticket *theWinningTicket;
@end
