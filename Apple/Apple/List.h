#import <Foundation/Foundation.h>

typedef enum _ListColor
{
    listOfRed,
    listOfGreen,
    listOfYellow
}ListColor;

@interface List : NSObject

@property ListColor currentColor;
@property BOOL isHang;
-(id) init;
-(BOOL) drop;
-(void) grow;


@end
