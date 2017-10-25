//
//  model.h
//  PurchasePasses
//
//  Created by omniwyse on 18/10/17.
//  Copyright © 2017 myschool. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface model : NSObject

@property(nonatomic, weak)    NSString *rider;
@property(nonatomic, weak)    NSString *price;
@property(nonatomic, weak)    NSString *fares;
 @property(nonatomic, weak)   NSString *routes;
 @property(nonatomic, weak)   NSString *i;
@property(nonatomic,weak )  NSString *quantity;
 // @property(nonatomic, strong)  int *iM;
// @property(nonatomic, weak)   int countM;
-(id)initWithrider:(NSString *)rider andprice:(NSString *)price andfares:(NSString *)fares androutes:(NSString *)routes andquantity:(NSString *)quantity;


-(id)getvalue;


@end
