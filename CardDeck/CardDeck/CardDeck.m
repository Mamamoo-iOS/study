//
//  EJCard.m
//  CardDeck
//
//  Created by Eunjoo Im on 2015. 12. 2..
//  Copyright © 2015년 Mamamoo-iOS. All rights reserved.
//

#import "CardDeck.h"


@implementation CardDeck {
    NSArray *_cardType;
    int _cardNumber;
}

- (void) randomize {
    NSLog(@"start randomize");
    _cardType = [NSArray arrayWithObjects: @"heart", @"diamond", @"spade", @"club", nil];
    
    int type = (arc4random() % 4);
    
    NSString *cardType = [NSString stringWithString:
                          _cardType[type]];
    _cardNumber = (arc4random() % 13) + 1;
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"DataModelChanged"
                                                        object:self
                                                      userInfo:@{@"cardType":cardType,
                                                                 @"cardNumber":[NSNumber numberWithInt:_cardNumber]}];
}

@end
