#import <Foundation/Foundation.h>

typedef enum _AppleColor
{
    appleOfRed,
    appleOfGreen,
    appleOfYellow
} AppleColor;

@interface Apple : NSObject
@property NSNumber *seed;
@property AppleColor currentColor;
@property BOOL isHang;
-(BOOL) drop;
-(void) grow;
-(id) initWithSeedCount: (NSNumber *) seedCount;

@end