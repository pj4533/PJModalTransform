//
//  SGViewController.h
//  PJModalTransform
//
//  Created by PJ Gray on 9/28/12.
//  Copyright (c) 2012 Say Goodnight Software. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SGViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIButton *theButton;
@property BOOL isModal;

- (IBAction)buttonTapped:(id)sender;


@end
