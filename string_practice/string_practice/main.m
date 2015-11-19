//
//  main.m
//  string_practice
//
//  Created by Eunjoo Im on 2015. 11. 4..
//  Copyright © 2015년 Mamamoo-iOS. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface GRPoint : NSObject {
    //ivar 보통 _를 앞에 붙임
    float _x;
    float _y;
}
// method
- (id)initWithX:(float)x andY:(float)y;
//- (void)setX:(float)x;
//- (void)setY:(float)y;
- (float)x;
- (float)y;
- (void)displayPoint;
@end

@implementation GRPoint

- (id)initWithX:(float)x andY:(float)y {
    self = [super init];
    if (self) {
        _x = x;
        _y = y;
    }
    return self;
} // initWithXandY

- (NSString*)description {
    return [NSString stringWithFormat:@"x=%f, y=%f", _x, _y];
}
//- (void)setX:(float)x {
//    _x = x;
//}
//
//- (void)setY:(float)y {
//    _y = y;
//}

- (float)x {
    return _x;
}

- (float)y {
    return _y;
}

- (void)displayPoint {
    NSLog(@"x = %f, y = %f", _x, _y);
}

@end

@interface GRtriangle : NSObject {
    GRPoint* _pointA;
    GRPoint* _pointB;
    GRPoint* _pointC;
}

- (id)initWithA:(GRPoint*)pointA B:(GRPoint*)pointB andC:(GRPoint*)pointC;
- (void)displayTriangle;

@end

@implementation GRtriangle

- (id)initWithA:(GRPoint*)pointA B:(GRPoint*)pointB andC:(GRPoint*)pointC {
    self = [super init];
    if (self) {
        _pointA = pointA;
        _pointB = pointB;
        _pointC = pointC;
    }
    return self;
} // initWithABandC

- (void)displayTriangle {
    NSLog(@"a = %@, b = %@, c = %@", _pointA, _pointB, _pointC);
}

- (NSString*) description {
    return [NSString stringWithFormat:@"pointA=%@, pointB=%@, pointC=%@", _pointA, _pointB, _pointC];
}

@end


int main(int argc, const char * argv[]) {
//    GRPoint* pointA = [[GRPoint alloc] init];
//    [pointA setX:10];
//    [pointA setY:20];
    GRPoint* pointA = [[GRPoint alloc] initWithX:10 andY:20];
    GRPoint* pointB = [[GRPoint alloc] initWithX:20 andY:30];
    GRPoint* pointC = [[GRPoint alloc] initWithX:30 andY:40];
    [pointA displayPoint];
    
    NSLog(@"pointA = %@", pointA);
    
    GRtriangle* triangleA = [[GRtriangle alloc] initWithA:pointA B:pointB andC:pointC];
    NSLog(@"triangleA = %@", triangleA);
    [triangleA displayTriangle];
    
    return NSApplicationMain(argc, argv);
}
