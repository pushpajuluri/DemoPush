//
//  colors.h
//  PurchasePasses
//
//  Created by omniwyse on 23/10/17.
//  Copyright © 2017 myschool. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface colors : NSObject
#define Rgb2UIColor(r, g, b)  [UIColor colorWithRed:((r) / 255.0) green:((g) / 255.0) blue:((b) / 255.0) alpha:1.0]
@end
