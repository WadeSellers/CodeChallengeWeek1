//
//  ViewController.m
//  CodeChallenge1
//
//  Created by Wade Sellers on 10/2/14.
//  Copyright (c) 2014 Wade Sellers. All rights reserved.
//

#import "ViewController.h"
#import "webViewController.h"

@interface ViewController () <UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UINavigationItem *answerBar;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *webButton;
@property (weak, nonatomic) IBOutlet UITextField *valueOne;
@property (weak, nonatomic) IBOutlet UITextField *valueTwo;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (IBAction)onPressedCalculate:(id)sender {
    int product = (self.valueOne.text.intValue * self.valueTwo.text.intValue);
    NSString *answerAsString = [NSString stringWithFormat:@"%d", product];
    self.answerBar.title = answerAsString;
    [self.valueOne resignFirstResponder];
    [self.valueTwo resignFirstResponder];

    if (product % 5 == 0) {
        self.webButton.enabled = NO;
    }
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    webViewController *webViewController = segue.destinationViewController;
    webViewController.answerAsString = self.answerBar.title;
}


@end





//SCRATCH PAPER!

//    int firstNumber = [self.valueOne.text intValue];
//NSString *string = @"5";
//int value = [string intValue];