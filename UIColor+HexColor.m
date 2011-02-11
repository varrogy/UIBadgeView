//
//  UIColor+HexColor.m
//
//  Created by Gyuri on 2/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "UIColor+HexColor.h"


@implementation UIColor (HexColor)

+ (UIColor *)hexColor:(int)hex {
	float red = ((float)((hex & 0xFF000000) >> 32))/255.0;
	float green = ((float)((hex & 0xFF0000) >> 16))/255.0;
	float blue = ((float)((hex & 0xFF00) >> 8))/255.0;
    float alpha = ((float)(hex & 0xFF))/255.0; 

	return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
}

@end
