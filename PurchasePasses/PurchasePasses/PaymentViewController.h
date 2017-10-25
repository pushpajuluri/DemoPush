//
//  PaymentViewController.h
//  PurchasePasses
//
//  Created by omniwyse on 17/10/17.
//  Copyright © 2017 myschool. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PaymentViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *lblEmail;
@property (weak, nonatomic) IBOutlet UIButton *btnback;
@property (weak, nonatomic) IBOutlet UIButton *btnNxt;
-(IBAction)buttontapped:(id)sender;
@end
