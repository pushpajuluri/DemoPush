//
//  ViewController.m
//  PurchasePasses
//
//  Created by OMNIWYSE on 10/12/17.
//  Copyright © 2017 myschool. All rights reserved.
//

#import "ViewController.h"
#import "RiderTableViewCell.h"
#import "ReviewCartOnceViewController.h"
#import "model.h"
#import "colors.h"



@interface ViewController ()
{
    NSArray *riderArray;
    NSArray *priceArray;
    NSArray *faresArray;
    NSArray *routesAray;
    NSMutableArray *iarray;
    NSArray *quantityArray;
    NSArray *passesarray;
    int *i;
    int count;
}
@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    model *m =[[model alloc] initWithrider:@"Frequent Rider" andprice:@"$65.00"andfares:@"Full Fare" androutes:@"Local Routes" andquantity:@"$0.00"];
     model *m1 =[[model alloc] initWithrider:@"NX 1- Frequent Rider" andprice:@"$110.00"andfares:@"Full Fare" androutes:@"NX Zone 1" andquantity:@"$0.00"];
    model *m2 =[[model alloc] initWithrider:@"NX2 - Frequent Rider" andprice:@"$125.00"andfares:@"Full Fare" androutes:@"NX Zone2" andquantity:@"$0.00"];
    model *m3 =[[model alloc] initWithrider:@"NX3 - Frequent Rider" andprice:@"$170.00"andfares:@"Full Fare" androutes:@"NX Zone 3" andquantity:@"$0.00"];
   
    passesarray = [NSArray arrayWithObjects:m,m1,m2,m3, nil];
    riderArray = [[NSArray alloc]initWithObjects:@"Frequent Rider",@"NX 1- Frequent Rider",@"NX2 - Frequent Rider",@"NX3 - Frequent Rider", nil];
   // NSArray riderArray = [riderArray upper]
    priceArray = [[NSArray alloc]initWithObjects:@"$65.00",@"$110.00",@"$125.00",@"$170.00", nil];
    faresArray = [[NSArray alloc]initWithObjects:@"Full Fare", @"Full Fare",@"Full Fare",@"Full Fare",nil];
    routesAray = [[NSArray alloc]initWithObjects:@"Local Routes",@"NX Zone 1",@"NX Zone2",@"NX Zone 3",nil];
    quantityArray = [[NSArray alloc]initWithObjects:@"$0.00(0)",@"$0.00(0)",@"$0.00(0)",@"$0.00(0)",nil];
  //  iarray = [NSMutableArray array];
    self.txtQuantity.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    _btnnxt.layer.borderWidth = 2.0f;
    _btnnxt.layer.borderColor = [UIColor lightTextColor].CGColor;
    _btnnxt.layer.cornerRadius = 8.0f;
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return  1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return  [passesarray count];
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 120.0;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    RiderTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if (!cell) {
     //   [tableView registerNib:@" RiderTableViewCell" forCellReuseIdentifier:@"Cell"];
        [tableView registerNib:[UINib nibWithNibName:@"RiderTableViewCell" bundle:nil] forCellReuseIdentifier:@"Cell"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
         }
   // model *movie = (self.marrMovies)[indexPath.row];
    model *passesObj = self->passesarray[indexPath.row];
    cell.lblFare.text = passesObj.fares;//[faresArray objectAtIndex:indexPath.row];
    cell.lblPrice.text = passesObj.price;//[priceArray objectAtIndex:indexPath.row];
   // cell.lblPrice.textColor = [UIColor greenColor];
    cell.lblPrice.textColor = Rgb2UIColor(85, 175, 85);
    cell.lblRoutes.text = passesObj.routes;//[routesAray objectAtIndex:indexPath.row];
    cell.lblRiderType.text =passesObj.rider;//[riderArray objectAtIndex:indexPath.row];
    cell.txtValue.text =[iarray objectAtIndex:indexPath.row];
    cell.lblQuantity.text = passesObj.quantity;//[quantityArray objectAtIndex:indexPath.row];
   // cell.lblQuantity.textColor = [UIColor redColor];

     cell.lblQuantity.textColor = Rgb2UIColor(170, 79, 78);
    cell.btnInc.tag = indexPath.row;
    cell.btnDec.tag = indexPath.row;
    cell.viewbtnincdec.layer.cornerRadius = 6.0f;
    cell.viewbtnincdec.layer.masksToBounds = YES;
    cell.viewbtnincdec.layer.borderColor = [[UIColor lightTextColor] CGColor];
    cell.viewbtnincdec.layer.borderWidth = 2.0f;
    [cell.btnDec addTarget:self action:@selector(functionName:) forControlEvents:UIControlEventTouchUpInside];
    [cell.btnInc addTarget:self action:@selector(functionName1:) forControlEvents:UIControlEventTouchUpInside];
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    model *passesObj = self->passesarray[indexPath.row];
}


- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    
    self.lblQuantity.text =  [textField.text stringByAppendingString:string];
    _lblQuantity.textColor = [UIColor redColor];
    
    return YES;
}


- (void) functionName:(UIButton *) sender {
    for (i = 0, count = [iarray count]; i < count; i = i - 1)
    {
       [iarray objectAtIndex:*i];
       
    }
    
}
//
//- (void) functionName1:(UIButton *) sender {
//    for (i = 0, count = [iarray count]; i < count; i = i + 1)
//    {
//        [iarray objectAtIndex:*i];
//        
//    }
//    
//}
//[self.btnnxt addTarget:self action:@selector(functionName1:) forControlEvents:UIControlEventTouchUpInside];
-(IBAction)buttontapped:(id)sender{
//    ReviewCartOnceViewController *reviewViewController = [[ReviewCartOnceViewController alloc] initWithNibName:@"ReviewCartOnceViewController" bundle:[NSBundle mainBundle]];
//   [self.navigationController pushViewController:reviewViewController animated:YES];

    ReviewCartOnceViewController *rc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil]
                                    instantiateViewControllerWithIdentifier:@"ReviewCartOnceViewController"];
    [self.navigationController pushViewController:rc animated:YES];
    
}
-(IBAction)clearbuttontapped:(id)sender{
   
    self.txtQuantity.text = @"";
}

@end
