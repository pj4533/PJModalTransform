//
//  SGViewController.m
//  PJModalTransform
//
//  Created by PJ Gray on 9/28/12.
//  Copyright (c) 2012 Say Goodnight Software. All rights reserved.
//

#import "SGViewController.h"
#import "UIViewController+PJModalTransform.h"

@interface SGViewController ()

@end

@implementation SGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    if (self.isModal) {
        [self.theButton setTitle:@"Dismiss" forState:UIControlStateNormal];
    }
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonTapped:(id)sender {
    NSLog(@"button: %@", self.theButton.titleLabel.text);
    if ([self.theButton.titleLabel.text isEqualToString:@"Present"]) {
        SGViewController* modalVC = [[SGViewController alloc] initWithNibName:@"SGViewController" bundle:nil];
        modalVC.isModal = YES;
        modalVC.modalPresentationStyle = UIModalPresentationFormSheet;
        [self transformPresentViewController:modalVC animated:YES completion:nil];
    } else {
        [self.presentingViewController transformDismissViewControllerAnimated:YES completion:nil];
    }
}


@end
