//
//  PaymentViewController.m
//  PurchasePasses
//
//  Created by omniwyse on 17/10/17.
//  Copyright © 2017 myschool. All rights reserved.
//

#import "PaymentViewController.h"
#import "ReviewCartOnceViewController.h"

@interface PaymentViewController ()

@end

@implementation PaymentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _btnback.layer.borderWidth = 2.0f;
    _btnback.layer.borderColor = [UIColor lightGrayColor].CGColor;
    _btnback.layer.cornerRadius = 8.0f;
    _btnNxt.layer.borderWidth = 2.0f;
    _btnNxt.layer.borderColor = [UIColor lightGrayColor].CGColor;
    _btnNxt.layer.cornerRadius = 8.0f;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)buttontapped:(id)sender{
    //    ReviewCartOnceViewController *reviewViewController = [[ReviewCartOnceViewController alloc] initWithNibName:@"ReviewCartOnceViewController" bundle:[NSBundle mainBundle]];
    //   [self.navigationController pushViewController:reviewViewController animated:YES];
    
    ReviewCartOnceViewController *rc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil]
                                 instantiateViewControllerWithIdentifier:@"ReviewCartOnceViewController"];
    [self.navigationController pushViewController:rc animated:YES];
    
}

@end
