//
//  StarWarsCharacters.m
//  Star Wars
//
//  Created by Taylor Frost on 5/31/16.
//  Copyright © 2016 FrostEnterprises. All rights reserved.
//

#import "StarWarsCharacter.h"

@implementation StarWarsCharacter

-(instancetype)initWithName:(NSString *)n spaceship:(NSString *)s {
    
    if (self = [super init] ) {
        self.name = n;
        self.spaceship = s;
    }
    return self;
}

@end



    
    
    
    





