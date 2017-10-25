//
//  ReviewCartOnceViewController.m
//  PurchasePasses
//
//  Created by omniwyse on 17/10/17.
//  Copyright © 2017 myschool. All rights reserved.
//

#import "ReviewCartOnceViewController.h"
#import "PaymentViewController.h"
#import "ViewController.h"

@interface ReviewCartOnceViewController ()

@end

@implementation ReviewCartOnceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _btnnxt.layer.borderWidth = 2.0f;
    _btnnxt.layer.borderColor = [UIColor lightTextColor].CGColor;
    _btnnxt.layer.cornerRadius = 8.0f;
    _btnback.layer.borderWidth = 2.0f;
    _btnback.layer.borderColor = [UIColor lightGrayColor].CGColor;
    _btnback.layer.cornerRadius = 8.0f;
    _viewCharged.layer.borderWidth = 2.0f;
    _viewCharged.layer.borderColor = [UIColor lightGrayColor].CGColor;
    _viewCharged.layer.cornerRadius = 8.0f;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(IBAction)buttontapped:(id)sender{
    //    ReviewCartOnceViewController *reviewViewController = [[ReviewCartOnceViewController alloc] initWithNibName:@"ReviewCartOnceViewController" bundle:[NSBundle mainBundle]];
    //   [self.navigationController pushViewController:reviewViewController animated:YES];
    
    PaymentViewController *rc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil]
                                        instantiateViewControllerWithIdentifier:@"PaymentViewController"];
    [self.navigationController pushViewController:rc animated:YES];
    
}
-(IBAction)buttontapped1:(id)sender{
    
    ViewController *rc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil]
                                 instantiateViewControllerWithIdentifier:@"ViewController"];
    [self.navigationController pushViewController:rc animated:YES];
    
}

@end
