//
//  indianaTableViewController.m
//  indianaJonesProject
//
//  Created by Taylor Frost on 6/6/16.
//  Copyright © 2016 FrostEnterprises. All rights reserved.
//

#import "indianaTableViewController.h"
#import "IndyCharacter.h"

@interface indianaTableViewController ()
@property (nonatomic, strong) NSMutableArray *postsArray;
@property (nonatomic, strong) IndyCharacter *Jones;
@end

@implementation indianaTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self parseJSON];

}

-(void)parseJSON{
    self.postsArray = [[NSMutableArray alloc]init];
    
    NSString *jsonString = [self stringWithJSONFile];
    
    NSData *data = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    
    NSDictionary *jsonDictionary = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:NULL];
    
    NSArray *jsonArray = [jsonDictionary objectForKey:@"results"];
    
    for(NSDictionary *dict in jsonArray){
        IndyCharacter *indiana = [[IndyCharacter alloc] initWithDictionary:dict];
        [self.postsArray addObject:indiana];
    }
    NSLog(@"count of posts == %ld", self.postsArray.count);
}

-(NSString *)stringWithJSONFile{
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"posts" ofType:@"json"];
    
    NSString *jsonString = [[NSString alloc] initWithContentsOfFile:filePath
                                                           encoding:NSUTF8StringEncoding
                                                              error:NULL];
    return jsonString;
}


#pragma mark - Table view data source

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.postsArray count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    self.Jones = [self.postsArray objectAtIndex:indexPath.row];
    
    cell.textLabel.text = self.Jones.characterName;
    
    return cell;
}

@end
