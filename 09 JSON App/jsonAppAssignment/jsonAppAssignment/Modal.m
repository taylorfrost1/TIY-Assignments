//
//  Modal.m
//  jsonAppAssignment
//
//  Created by Taylor Frost on 6/3/16.
//  Copyright © 2016 FrostEnterprises. All rights reserved.
//

#import "Modal.h"

@implementation Modal

-(instancetype)initWithName:(NSString *)n posterPath:(NSString *)s {
    
    if ( self = [super init] ) {
        self.originalTitle = n;
        self.posterPath = s;
    }
    return self;
}
@end
