//
//  ViewController.h
//  CardDeck
//
//  Created by Eunjoo Im on 2015. 12. 2..
//  Copyright © 2015년 Mamamoo-iOS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIImageView *cardImageView;
@property (strong, nonatomic) IBOutlet UILabel *cardLabel1;
@property (strong, nonatomic) IBOutlet UILabel *cardLabel2;

- (IBAction)clickRandomButton:(id)sender;


@end

