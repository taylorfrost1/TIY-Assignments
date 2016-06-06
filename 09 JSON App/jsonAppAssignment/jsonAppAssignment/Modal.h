//
//  Modal.h
//  jsonAppAssignment
//
//  Created by Taylor Frost on 6/3/16.
//  Copyright © 2016 FrostEnterprises. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Modal : NSObject

-(instancetype)initWithName:(NSString *) originalTitle posterPath:(NSString *)posterPath;

@property (nonatomic, strong) NSString *originalTitle;
@property (nonatomic, strong) NSString *posterPath;

@end
