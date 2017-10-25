//
//  ReviewCartTableViewCell.h
//  PurchasePasses
//
//  Created by omniwyse on 17/10/17.
//  Copyright © 2017 myschool. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ReviewCartTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *lblDescription;
@property (weak, nonatomic) IBOutlet UILabel *lblPrice;
@property (weak, nonatomic) IBOutlet UILabel *lblQuantity;
//@property (weak, nonatomic) IBOutlet UILabel *lblChargedFare;
//@property (weak,nonatomic) IBOutlet UILabel  *lblSelectedIteam;

@end
