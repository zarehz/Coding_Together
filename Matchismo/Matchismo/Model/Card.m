//
//  Card.m
//  Matchismo
//
//  Created by Zareh Zakarian on 1/30/13.
//  Copyright (c) 2013 Zareh Zakarian. All rights reserved.
//

#import "Card.h"

@implementation Card

-(int)match:(NSArray *)otherCards{
    int score = 0;
    
    for (Card *card in otherCards){
        if ([card.content isEqualToString:self.content]) {
            score = 1;
        }
    }
    
    return score;
}

@end
