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

-(void)viewWillAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    if(self.theMovie != nil) {
        
    self.nameOfMovieLabel.text = self.theMovie.originalTitle;
    
    NSLog(@"test for movie title generation");
        
//   UIImage *theImage = [self imageFromURLString: self.theMovie]
    
    
    
}
    
    
    


}
@end
