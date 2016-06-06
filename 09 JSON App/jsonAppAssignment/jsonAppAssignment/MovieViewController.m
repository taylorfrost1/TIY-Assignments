//
//  MovieViewController.m
//  jsonAppAssignment
//
//  Created by Taylor Frost on 6/3/16.
//  Copyright © 2016 FrostEnterprises. All rights reserved.
//

#import "MovieViewController.h"
#import "Modal.h"
#import "TableViewController.h"

@interface MovieViewController ()
@property (weak, nonatomic) IBOutlet UILabel *nameOfMovieLabel;
@property (weak, nonatomic) IBOutlet UIImageView *posterImageView;

@end

@implementation MovieViewController

-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    self.nameOfMovieLabel.text = self.theMovie.originalTitle;
    
    NSLog(@"test for movie title generation");
    
    
    
}
    
    
    



@end
