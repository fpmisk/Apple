//
//  Apple.h
//  Apple
//
//  Created by fpmi on 03.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum _AppleColor
{
    red,
    green,
    yellow
} AppleColor;

@interface Apple : NSObject
    @property NSNumber *seed;
    @property AppleColor currentColor;
    @property BOOL isHang;
-(BOOL) drop;
-(void) grow;
-(id) initWithSeedCount: (NSNumber *) seedCount;

@end
