//
//  IndyCharacter.h
//  indianaJonesProject
//
//  Created by Taylor Frost on 6/6/16.
//  Copyright © 2016 FrostEnterprises. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IndyCharacter : NSObject

-(instancetype) initWithDictionary:(NSDictionary *)dict;

@property (nonatomic, strong) NSString *characterName;
@property (nonatomic, strong) NSString *weaponChoice;
@property (nonatomic, strong) NSString *firstMovieAppearance;

@end
