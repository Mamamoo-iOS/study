//
//  main.m
//  string_test
//
//  Created by Eunjoo Im on 2015. 11. 4..
//  Copyright © 2015년 Mamamoo-iOS. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    NSString* aString = @"a";
    NSString* bString = @"b";
    NSNumber* iNumber = @3.14; // [[NSNumber alloc] initWithFloat: 3.14];
    NSArray* tArray = @[@"a", @"b"];
    NSDictionary* tDictionary = @{@"key":@"value"};
    
    
    id sender;
    sender = aString;
    //sender == @"a"
    sender = bString;
    //sender == @"b";
    
    if (aString == bString) {
        
    }
    
    if ([aString isEqualToString:bString]) {
        
    }
    
    @autoreleasepool {

    }
    return 0;
}
