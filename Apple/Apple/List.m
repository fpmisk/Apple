//
//  List.m
//  lab1
//
//  Created by Admin on 03.09.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "List.h"

@implementation List

@synthesize currentColor = _currentColor;
@synthesize isHang = _isHang;

-(BOOL) drop {
    
    if ([self isHang] == true) {
        [self setIsHang:false];
        NSLog(@"List drop from tree");
    }
    return [self isHang];
}

-(void) grow {
    if([self currentColor] == red){
        NSLog(@"List is red");
    }
    else if([self currentColor] == green){
        [self setCurrentColor: (ListColor) yellow];
        NSLog(@"List is yellow");
    }
    else if([self currentColor] == yellow){
        [self setCurrentColor: (ListColor) red];
        NSLog(@"List is red");
    }
}
-(id) init{
    self = [super init];
    if(self)
    {
        [self setCurrentColor: (ListColor) green];
        [self setIsHang: true];
        NSLog(@"List was created");
    }
    return self;
}
@end
