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