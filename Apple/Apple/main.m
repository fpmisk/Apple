//
//  main.m
//  Apple
//
//  Created by fpmi on 03.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Apple.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Apple * apple = [[Apple alloc] initWithSeedCount:[[NSNumber alloc] initWithInt: 10]];
        [apple grow];
        [apple grow];
        [apple drop];

    }
    return 0;
}
