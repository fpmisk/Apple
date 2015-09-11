#import <Foundation/Foundation.h>
#import "AppleTree.h"
#import "Basket.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        /*Apple * apple = [[Apple alloc] initWithSeedCount:[[NSNumber alloc] initWithInt: 10]];
        [apple grow];
        [apple grow];
        [apple drop];
        
        Leaf * leaf = [[Leaf alloc] init];
        [leaf grow];
        [leaf drop];
        
        AppleTree * at = [[AppleTree alloc] initWithAge: [[NSNumber alloc] initWithInt:10]];
        [at addApple:apple];
        [at addLeaf: leaf];*/
        
        NSMutableArray * array = [[NSMutableArray alloc] init];
        for (int i = 0; i < 6; ++i)
        {
            Apple * apple = [[Apple alloc] initWithSeedCount:[[NSNumber alloc] initWithInt:4]];
            [array addObject: apple];
        }
        Basket * basket = [[Basket alloc] initWithArray:array];
        BasketIterator * iterator = [basket iterator];
        
        while([iterator hasNext])
        {
            NSLog(@"%@ ", [iterator next]);
        }
    }
    return 0;
 }