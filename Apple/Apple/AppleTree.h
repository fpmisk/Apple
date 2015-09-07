
#import <Foundation/Foundation.h>
#import "Apple.h"
#import "Leaf.h"

@interface AppleTree : NSObject

@property NSInteger *age;
@property NSMutableArray *arrayOfApple;
@property NSMutableArray *arrayOfList;

-(bool) dropApple: (Apple *) apple;
-(bool) dropList: (Leaf *) list;
-(void) grow;
-(void) shake;
-(id) initWithAge: (NSInteger *) age;

@end
