//
//  List.h
//  lab1
//
//  Created by Admin on 03.09.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum _ListColor
{
    red,
    green,
    yellow
} ListColor;

@interface List : NSObject

@property ListColor currentColor;
@property BOOL isHang;
-(id) init;
-(BOOL) drop;
-(void) grow;


@end
