//
//  IndyCharacter.m
//  indianaJonesProject
//
//  Created by Taylor Frost on 6/6/16.
//  Copyright © 2016 FrostEnterprises. All rights reserved.
//

#import "IndyCharacter.h"

@implementation IndyCharacter

-(instancetype)initWithDictionary:(NSDictionary *)dict {
    if (self = [super init]){
        self.characterName = [dict objectForKey:@"characterName"];
        self.weaponChoice = [dict objectForKey:@"weaponChoice"];
        self.firstMovieAppearance = [dict objectForKey:@"firstMovieAppearance"];
    }
    return self;
}



@end
