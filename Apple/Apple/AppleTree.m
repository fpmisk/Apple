#import "AppleTree.h"

@implementation AppleTree

@synthesize arrayOfApple = _arrayOfApple;
@synthesize arrayOfList = _arrayOfList;
@synthesize age = _age;

-(bool) dropApple: (Apple *) apple
{
    return false;
}
-(bool) dropList: (Leaf *) list
{
    return false;
}
-(void) grow
{
    
}
-(void) shake
{
    
}
-(id) initWithAge:(NSInteger *)age
{
    self = [super init];
    if(self)
    {
        [self setAge:age];
        NSMutableArray * temp = [[NSMutableArray alloc] init];
        [self setArrayOfApple:temp];
        temp = [[NSMutableArray alloc] init];
        [self setArrayOfList:temp];
        NSLog(@"AppleTree was created");
    }
    return self;
}

@end
