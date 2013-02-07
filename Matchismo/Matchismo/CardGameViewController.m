//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Zareh Zakarian on 1/30/13.
//  Copyright (c) 2013 Zareh Zakarian. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"

@interface CardGameViewController ()

@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;

@end

@implementation CardGameViewController

-(void)setFlipCount:(int)flipCount{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
//    NSLog(@"Flips count updated to %d.", self.flipCount);
}

- (IBAction)flipCard:(UIButton *)sender {
    PlayingCardDeck *myCards = [[PlayingCardDeck alloc] init];

//Added some extra code for the UIButton state changes. 
    if (!sender.isSelected) {
        NSString *title = [myCards drawRandomCard].contents;
        [sender setTitle:title forState:UIControlStateSelected];
        [sender setTitle:title forState:UIControlStateNormal];
    }else{
        [sender setTitle:@"" forState:UIControlStateHighlighted];
        [sender setTitle:@"" forState:UIControlStateNormal];
    }
    
    sender.selected = !sender.selected;
    self.flipCount++;
}

@end
