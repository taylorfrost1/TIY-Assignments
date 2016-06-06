//
//  MovieViewController.h
//  jsonAppAssignment
//
//  Created by Taylor Frost on 6/3/16.
//  Copyright © 2016 FrostEnterprises. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Modal.h"
#import "TableViewController.h"

@interface MovieViewController : UIViewController

@property (nonatomic, strong) Modal *theMovie;
@property (nonatomic, strong) UIImage *image;

@end
