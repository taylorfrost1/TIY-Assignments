//
//  EnlargedPicViewController.m
//  cameraApp
//
//  Created by Taylor Frost on 6/2/16.
//  Copyright © 2016 FrostEnterprises. All rights reserved.
//

#import "EnlargedPicViewController.h"


@interface EnlargedPicViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *passedImageVC;

@end

@implementation EnlargedPicViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

-(void) viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    self.passedImageVC.image = self.image;
}

@end
