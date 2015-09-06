#import "Apple.h"

@implementation Apple

@synthesize seed = _seed;
@synthesize currentColor = _currentColor;
@synthesize isHang = _isHang;

-(BOOL) drop {
    
    if ([self isHang] == true) {
        [self setIsHang:false];
        NSLog(@"Apple drop from tree");
    }
    return [self isHang];
}

-(void) grow {
    if([self currentColor] == appleOfRed){
        NSLog(@"Apple is red");
    }
    else if([self currentColor] == appleOfGreen){
        [self setCurrentColor: (AppleColor) appleOfYellow];
        NSLog(@"Apple is yellow");
    }
    else if([self currentColor] == appleOfYellow){
        [self setCurrentColor: (AppleColor) appleOfRed];
        NSLog(@"Apple is red");
    }
}
-(id) initWithSeedCount: (NSNumber *) seedCount{
    
    self = [super init];
    if(self)
    {
        [self setCurrentColor: (AppleColor) appleOfGreen];
        [self setSeed: seedCount];
        [self setIsHang: true];
        NSLog(@"Apple was created");
    }
    return self;
}
@end
