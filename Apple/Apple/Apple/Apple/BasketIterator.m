//
//  BasketIterator.m
//  Apple
//
//  Created by fpmi on 10.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "BasketIterator.h"

@implementation BasketIterator

@synthesize arrayOfFruit = _arrayOfFruit;
@synthesize currentNumber = _currentNumber;
@synthesize median = _median;

-(bool) hasNext
{
    if([[self arrayOfFruit] count] == 0)
    {
        return false;
    }
    if([[self currentNumber] intValue] == 0)
    {
        [self setCurrentNumber: [[NSNumber alloc] initWithInt:1]];
        return true;
    }
    if([[self currentNumber] intValue] == [[self median] intValue])
    {
        return false;
    }
    if([self currentNumber] < [self median])
    {
        int numberInArray = 2*[[self median] intValue] - [[self currentNumber] intValue];
        [self setCurrentNumber: [[NSNumber alloc] initWithInt: numberInArray]];
    }
    else
    {
        int numberInArray = 2*[[self median] intValue] - [[self currentNumber] intValue] + 1;
        [self setCurrentNumber: [[NSNumber alloc] initWithInt: numberInArray]];
    }
    return true;
}
-(id) next
{
    int index = [[self currentNumber] intValue];
    if([[self arrayOfFruit] count] % 2 == 0 && [[self currentNumber] intValue] > [[self median] intValue])
    {
        index -= 1;
        if(index == [[self median] intValue])
        {
            [self setCurrentNumber: [self median]];
        }
    }
    return [[self arrayOfFruit] objectAtIndex:index - 1];
    //return [[NSNumber alloc]initWithInt: index];
}
-(id) initWithArray: (NSMutableArray *) array
{
    self = [super init];
    if(self)
    {
        [self setArrayOfFruit: array];
        [self setMedian:[[NSNumber alloc] initWithUnsignedLong: [array count]/2 + 1]];
        [self setCurrentNumber:[[NSNumber alloc] initWithInt: 0]];
        NSLog(@"BasketIterator was created");
    }
    return self;
}

@end
