//
//  ViewController.m
//  My Firs iOS App
//
//  Created by Claudio Nanni on 17/07/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIAlertViewDelegate>
@property (nonatomic, strong) UISwitch *mainSwitch;
@end

@implementation ViewController

- (NSString *) yesButtonTitle {
    return @"Yes";
}
- (NSString *) noButtonTitle {
    return @"No";
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    /* Create the switch */
    self.mainSwitch = [[UISwitch alloc] initWithFrame:
                       CGRectMake(100, 100, 0, 0)];
    [self.view addSubview:self.mainSwitch];
	// Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    self.view.backgroundColor = [UIColor whiteColor];
    NSString *message = @"Are you sure you want to open this link in Safari?";
    UIAlertView *alertView = [[UIAlertView alloc]
                              initWithTitle:@"Open Link"
                              message:message
                              delegate:self
                              cancelButtonTitle:[self noButtonTitle]
                              otherButtonTitles:[self yesButtonTitle], nil];
    [alertView show];
}
- (void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    NSString *buttonTitle = [alertView buttonTitleAtIndex:buttonIndex];
    if ([buttonTitle isEqualToString:[self yesButtonTitle]]){
        NSLog(@"User pressed the Yes button.");
    }
    else if ([buttonTitle isEqualToString:[self noButtonTitle]]){
        NSLog(@"User pressed the No button.");
    }
}
@end
