//
//  PlayingCard.h
//  Matchismo
//
//  Created by Zareh Zakarian on 1/30/13.
//  Copyright (c) 2013 Zareh Zakarian. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+(NSArray *)validSuits;
+(NSUInteger)maxRank;
@end
