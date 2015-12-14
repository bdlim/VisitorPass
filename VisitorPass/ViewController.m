//
//  ViewController.m
//  VisitorPass
//
//  Created by Brandon Lim on 12/11/15.
//  Copyright © 2015 Brandon Lim. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *firstName;
@property (weak, nonatomic) IBOutlet UITextField *lastName;
@property (weak, nonatomic) IBOutlet UITextField *company;
@property (weak, nonatomic) IBOutlet UITextField *companyAddress;
@property (weak, nonatomic) IBOutlet UITextField *zipCode;
@property (weak, nonatomic) IBOutlet UITextField *employeeSponsor;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.firstName.delegate = self;
    self.lastName.delegate = self;
    self.company.delegate = self;
    self.companyAddress.delegate = self;
    self.zipCode.delegate = self;
    self.zipCode.keyboardType = UIKeyboardTypeNumbersAndPunctuation;
    self.employeeSponsor.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    if (textField == self.employeeSponsor) {
        textField.returnKeyType = UIReturnKeyDone;
    } else {
        textField.returnKeyType = UIReturnKeyNext;
    }
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    if (textField == self.firstName) {
        [textField resignFirstResponder];
        [self.lastName becomeFirstResponder];
    } else if (textField == self.lastName) {
        [textField resignFirstResponder];
        [self.company becomeFirstResponder];
    } else if (textField == self.company) {
        [textField resignFirstResponder];
        [self.companyAddress becomeFirstResponder];
    } else if (textField == self.companyAddress) {
        [textField resignFirstResponder];
        [self.zipCode becomeFirstResponder];
    } else if (textField == self.zipCode) {
        [textField resignFirstResponder];
        [self.employeeSponsor becomeFirstResponder];
    } else {
        // Submit
    }
    return YES;
}

- (IBAction)submit:(id)sender {
    // Submit
}

- (IBAction)onTap:(id)sender {
    [self.firstName resignFirstResponder];
    [self.lastName resignFirstResponder];
    [self.company resignFirstResponder];
    [self.companyAddress resignFirstResponder];
    [self.zipCode resignFirstResponder];
    [self.employeeSponsor resignFirstResponder];
}

@end
