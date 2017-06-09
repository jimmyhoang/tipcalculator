//
//  ViewController.m
//  TipCalculator
//
//  Created by Jimmy Hoang on 2017-06-09.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;
@property (weak, nonatomic) IBOutlet UILabel *tipAmountLabel;
@property (weak, nonatomic) IBOutlet UILabel *tipPercentageLabel;
@property (weak, nonatomic) IBOutlet UISlider *tipSlider;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)adjustTipPercentage:(id)sender {
    
    self.tipPercentageLabel.text = [NSString stringWithFormat:@"%.2f%%",self.tipSlider.value];
    float billAmount = self.billAmountTextField.text.floatValue;
    float tipPercentage = self.tipSlider.value;
    float tip = (billAmount * tipPercentage)/100;
    self.tipAmountLabel.text = [NSString stringWithFormat:@"Your tip will be $%.2f",tip];
}
- (IBAction)tapGesture:(UITapGestureRecognizer*)sender {
    
    [self.view endEditing:YES];
}

@end
