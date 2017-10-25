//
//  ReviewCartOnceViewController.h
//  PurchasePasses
//
//  Created by omniwyse on 17/10/17.
//  Copyright © 2017 myschool. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ReviewCartOnceViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *btnnxt;
@property (weak, nonatomic) IBOutlet UIButton *btnback;
@property (weak, nonatomic) IBOutlet UIView *viewCharged;
-(IBAction)buttontapped:(id)sender;
-(IBAction)buttontapped1:(id)sender;
@end
