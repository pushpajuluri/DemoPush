//
//  RiderTableViewCell.h
//  PurchasePasses
//
//  Created by OMNIWYSE on 10/12/17.
//  Copyright © 2017 myschool. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RiderTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *lblRiderType;
@property (weak, nonatomic) IBOutlet UILabel *lblPrice;
@property (weak, nonatomic) IBOutlet UILabel *lblQuantity;
@property (weak, nonatomic) IBOutlet UILabel *lblFare;
@property (weak, nonatomic) IBOutlet UILabel *lblRoutes;
@property (weak, nonatomic) IBOutlet UITextField *txtValue;
@property (weak, nonatomic) IBOutlet UIButton *btnInc;
@property (weak, nonatomic) IBOutlet UIButton *btnDec;
-(IBAction)buttonClicked:(id)sender;
-(IBAction)buttonClicked1:(id)sender;
@property (weak, nonatomic) IBOutlet UIView *viewbtnincdec;

@end
