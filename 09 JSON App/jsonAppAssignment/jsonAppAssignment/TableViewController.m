//
//  TableViewController.m
//  jsonAppAssignment
//
//  Created by Taylor Frost on 6/3/16.
//  Copyright © 2016 FrostEnterprises. All rights reserved.
//

#import "TableViewController.h"
#import "MovieViewController.h"
#import "Modal.h"

@interface TableViewController () <UITableViewDelegate, UITableViewDataSource>
@property (strong, nonatomic) IBOutlet UITableView *tableView1;
@property (nonatomic, strong) NSMutableArray *moviesArray;
@property (nonatomic, strong) Modal *modalObject;
@property (nonatomic, strong) UIImage *posterImage;
@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.moviesArray = [[NSMutableArray alloc] init];
    
    [self loadJSONFile];
    
    self.posterImage = [[UIImage alloc] init];
   
    
}

-(void)loadJSONFile {
    
    // 1 Create a string path from the bundle to json file.
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"popular"
                                                         ofType:@"json"];
    
    // 2. Converting the contents of the file
    
    NSString *jsonString = [[NSString alloc] initWithContentsOfFile:filePath
                                                           encoding:NSUTF8StringEncoding error:NULL];
    NSLog(@"%@", jsonString);
    
    
    
    // 3. Convert the JSON formatted String into NSData
    
    NSError *error = nil;
    
    // Create a data variable from the string
    NSData *data = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    
    // 4. Convert the JSON Dictionary into an NSDictionary
    NSDictionary *jsonDictionary = [NSJSONSerialization JSONObjectWithData:data
                                                                   options:NSJSONReadingAllowFragments
                                                                     error:&error];
    // Is this a valid dictionary?
    
    if(error == nil) {
        
        // Grabbing the array
        NSArray *resultsArray = [jsonDictionary objectForKey:@"results"];
        
        // Loop through every dictionary inside the array
        for(NSDictionary *dict in resultsArray) {
            
            NSLog(@"dict == %@", dict);
            
            // Put the dictionary values into my Movie object
            Modal *m = [[Modal alloc] init];
            
            NSString *title = [dict objectForKey:@"original_title"];
            
            if (title != nil) {
                m.originalTitle = title;
            } else {
                m.originalTitle =@"";
                NSLog(@"Could not parse title field");
            }
            
            NSString *posterPath = [dict objectForKey:@"poster_path"];
            
            if (posterPath != nil) {
                m.posterPath = posterPath;
            } else {
                m.posterPath =@"";
                NSLog(@"Could not parse powers field");
            }
            
            if (m != nil) {
                [self.moviesArray addObject:m];
            }
            
            NSLog(@"Movie Count: %ld", self.moviesArray.count);
        }
        
    } else {
        NSLog(@"Could not parse json into NSDictionary");
    }
    
    UIImage *myImage = [self imageFromURLString:@"http://image.tmdb.org/t/p/w500/jjBgi2r5cRt36xF6iNUEhzscEcb.jpg"];
    
    if (myImage == nil) {
        NSLog(@"Could not load the image");
    } else {
        NSLog(@"Got the image!");
    }
    
}

// Loading Synchrounously a http url and converts it to a UIImage

-(UIImage *)imageFromURLString:(NSString *)urlString {
    
    // I create an empty point to an image
    UIImage *theImage = nil;
    
    // NSURL is an object that takes a web based url and converts it to something we can use in iOS
    
    NSURL *url = [NSURL URLWithString:urlString];
    
    NSLog(@"Attempting to Load urlString == %@", urlString);
    
    //
    if(url != nil) {
        NSData *data = [NSData dataWithContentsOfURL:url];
        
        if(data != nil) {
            theImage = [UIImage imageWithData:data];
        }
    }
    return theImage;
}



#pragma mark - Table view data source
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
   return [self.moviesArray count];
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    self.modalObject = [self.moviesArray objectAtIndex:indexPath.row];
    
    cell.textLabel.text = self.modalObject.originalTitle;
    
   [self imageFromURLString:posterImage];
    
    cell.imageView.image = posterImage;
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    [self.moviesArray objectAtIndex:indexPath.row];
    
    [self performSegueWithIdentifier:@"movieSegue" sender:nil];
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    MovieViewController *profileController = (MovieViewController *)segue.destinationViewController;
    
    profileController.theMovie = self.modalObject;
}

@end
