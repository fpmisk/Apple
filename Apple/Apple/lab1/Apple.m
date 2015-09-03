//
//  Apple.m
//  Apple
//
//  Created by fpmi on 03.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "Apple.h"

@implementation Apple

@synthesize seed = _seed;
@synthesize currentColor = _currentColor;
@synthesize isHang = _isHang;

-(BOOL) drop {
   
    if ([self isHang] == true) {
         [self setIsHang:false];
        NSLog(@"Apple drop from tree");
    }
    return [self isHang];
}

-(void) grow {
    if([self currentColor] == red){
        NSLog(@"Apple is red");
    }
    else if([self currentColor] == green){
        [self setCurrentColor: (AppleColor) yellow];
        NSLog(@"Apple is yellow");
    }
    else if([self currentColor] == yellow){
        [self setCurrentColor: (AppleColor) red];
        NSLog(@"Apple is red");
    }
}
-(id) initWithSeedCount: (NSNumber *) seedCount{
    [self setCurrentColor: (AppleColor) green];
    [self setSeed: seedCount];
    [self setIsHang: true];
    NSLog(@"Apple was created");
    return self;
}
@end
