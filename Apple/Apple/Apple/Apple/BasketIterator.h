//
//  BasketIterator.h
//  Apple
//
//  Created by fpmi on 10.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BasketIterator : NSObject

@property NSMutableArray * arrayOfFruit;
@property NSNumber * currentNumber;
@property NSNumber * median;

-(id) initWithArray: (NSMutableArray *) array;
-(bool) hasNext;
-(id) next;

@end
