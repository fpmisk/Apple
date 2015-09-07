#import "List.h"

@implementation List

@synthesize currentColor = _currentColor;
@synthesize isHang = _isHang;

-(BOOL) drop {
    
    if ([self isHang] == true) {
        [self setIsHang:false];
        NSLog(@"List drop from tree");
    }
    return [self isHang];
}

-(void) grow {
    if([self currentColor] == listOfRed){
        NSLog(@"List is red");
    }
    else if([self currentColor] == listOfGreen){
        [self setCurrentColor: (ListColor) listOfYellow];
        NSLog(@"List is yellow");
    }
    else if([self currentColor] == listOfYellow){
        [self setCurrentColor: (ListColor) listOfRed];
        NSLog(@"List is red");
    }
}
-(id) init{
    self = [super init];
    if(self)
    {
        [self setCurrentColor: (ListColor) listOfGreen];
        [self setIsHang: true];
        NSLog(@"List was created");
    }
    return self;
}
@end
