//
//  model.m
//  PurchasePasses
//
//  Created by omniwyse on 18/10/17.
//  Copyright © 2017 myschool. All rights reserved.
//

#import "model.h"

@implementation model

-(id)initWithrider:(NSString *)rider andprice:(NSString *)price andfares:(NSString *)fares androutes:(NSString *)routes andquantity:(NSString *)quantity
{
    self = [super init];
    
 
    self.rider = rider;
    self.price = price;
    self.fares = fares;
    self.routes = routes;
    self.quantity = quantity;
    
    return self;
}
    
-(id)getvalue
{
  //  self = [super init];
   // model *obj = [[model alloc] init];
    //*obj->rider = @"Frequent Rider";
    //self.rider
   // rider = @"frequent rider";
    return self;

}
@end
