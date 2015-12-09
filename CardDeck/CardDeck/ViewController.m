//
//  ViewController.m
//  CardDeck
//
//  Created by Eunjoo Im on 2015. 12. 2..
//  Copyright © 2015년 Mamamoo-iOS. All rights reserved.
//

#import "ViewController.h"
#import "CardDeck.h"

@interface ViewController ()

@end

@implementation ViewController {
    CardDeck *cardDeck;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(didReceiveNotification:)
                                                 name:@"DataModelChanged"
                                               object:nil];
    
    cardDeck = [[CardDeck alloc] init];
}

-(void)didReceiveNotification:(NSNotification*)notification {
    if ([notification.name isEqualToString:@"DataModelChanged"]) {
        NSDictionary *dict = [notification userInfo];
        
        NSLog(@"%@의 %@", @[[dict objectForKey:@"cardType"]], @[[dict objectForKey:@"cardNumber"]]);

        _cardImageView.image = [UIImage imageNamed:@"c2"];
    }
}

-(NSString*)getCardImageName:(NSDictionary*)dict {
    
    
    return @"";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickRandomButton:(id)sender {
    [cardDeck randomize];
}
@end
