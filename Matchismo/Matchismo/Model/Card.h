//
//  Card.h
//  Matchismo
//
//  Created by Zareh Zakarian on 1/30/13.
//  Copyright (c) 2013 Zareh Zakarian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong,nonatomic) NSString *contents;
@property (nonatomic, getter = isFaceUp) BOOL faceUp;
@property (nonatomic, getter = isUnplayable) BOOL unplayable;

-(int)match:(NSArray *)otherCards;
@end
