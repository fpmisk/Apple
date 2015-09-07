
#import <Foundation/Foundation.h>
#import "Apple.h"
#import "Leaf.h"
#import "Tree.h"

@interface AppleTree : NSObject <Tree>

@property NSInteger *countOfApple;
@property NSMutableArray *arrayOfApple;

-(bool) dropApple: (Apple *) apple;
-(void) addApple: (Apple *) apple;
-(void) grow;
-(void) shake;
-(id) initWithAge: (NSInteger *) age;

@end