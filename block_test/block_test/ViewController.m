//
//  ViewController.m
//  block_test
//
//  Created by Eunjoo Im on 2015. 12. 9..
//  Copyright © 2015년 Mamamoo-iOS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonClicked:(id)sender {
    
    CGRect newFrame = CGRectMake(300, 300, 100, 40);
    
    
    [UIView animateKeyframesWithDuration:2.0
                                   delay:0.0
                                 options:UIViewKeyframeAnimationOptionAutoreverse | UIViewKeyframeAnimationOptionRepeat animations:^{
        _myButton.backgroundColor = [UIColor yellowColor];
        _myButton.alpha = 0.5;
        _myButton.frame = newFrame;
        [_myButton setTitle:@"Clicked" forState:UIControlStateNormal];
    } completion:nil];
    
//    [UIView animateWithDuration:2.0
//                     animations:^{
//                         _myButton.backgroundColor = [UIColor yellowColor];
//                         _myButton.alpha = 0.5;
//                         
//                         
//                         //                         CGRect newFrame = _myButton.frame;
//                         //                         newFrame.origin.x = 300;
//                         //                         newFrame.origin.y = 300;
//                         //                         newFrame.size.width = 100;
//                         //                         newFrame.size.height = 40;
//변//                         _myButton.frame = newFrame;
//                         [_myButton setTitle:@"Clicked" forState:UIControlStateNormal];
//                     }
//                     completion:nil
//     //                     completion:^(BOOL finished) {
//     //                     }
//     ];
}


@end
