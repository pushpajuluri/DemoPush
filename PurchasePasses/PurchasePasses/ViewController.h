//
//  ViewController.h
//  PurchasePasses
//
//  Created by OMNIWYSE on 10/12/17.
//  Copyright © 2017 myschool. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
//-(id)initWithListener:(id)passesModel;
@property (weak, nonatomic) IBOutlet UIButton *btnnxt;
@property (weak, nonatomic) IBOutlet UIButton *btnclear;
@property (weak, nonatomic) IBOutlet UITextField *txtQuantity;
@property (weak,nonatomic) IBOutlet UILabel *lblEmail;
@property (weak,nonatomic) IBOutlet UILabel *lblQuantity;
-(IBAction)buttontapped:(id)sender;
-(IBAction)clearbuttontapped:(id)sender;
-(id)getvalue;
@end

