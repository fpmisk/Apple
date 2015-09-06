//
//  AppleTree.h
//  lab1
//
//  Created by Admin on 06.09.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Apple.h"
#import "List.h"

@interface AppleTree : NSObject

@property NSInteger *age;
@property NSMutableArray *arrayOfApple;
@property NSMutableArray *arrayOfList;

-(bool) dropApple: (Apple *) apple;
-(bool) dropList: (List *) list;
-(void) grow;
-(void) shake;
-(id) initWithAge: (NSInteger *) age;

@end
