//
//  UIViewController+PJModalTransform.m
//  
//
//  Created by PJ Gray on 9/11/12.
//  Copyright (c) 2012 PJ Gray. All rights reserved.
//

#import "UIViewController+PJModalTransform.h"
#import <QuartzCore/QuartzCore.h>

@implementation UIViewController (PJModalTransform)

- (void) transformPresentViewController:(UIViewController*) viewController animated:(BOOL)flag completion:(void (^)(void))completion {    
    [UIView animateWithDuration:0.33f animations:^{
        CATransform3D rotationAndPerspectiveTransform = self.view.layer.transform;
        rotationAndPerspectiveTransform.m34 = 1.0 / -500;
        rotationAndPerspectiveTransform = CATransform3DRotate(rotationAndPerspectiveTransform, 10.0f * M_PI / 180.0f, 1.0f, 0.0f, 0.0f);
        
        self.view.layer.transform = CATransform3DTranslate(rotationAndPerspectiveTransform, 0.0, -80.0, -75.0f);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:0.33f animations:^{
            self.view.layer.transform = CATransform3DRotate(self.view.layer.transform, -10.0f * M_PI / 180.0f, 1.0f, 0.0f, 0.0f);
        } completion:^(BOOL finished) {
        }];
    }];
    
    [self presentViewController:viewController animated:flag completion:completion];
}

- (void) transformDismissViewControllerAnimated:(BOOL)flag completion:(void (^)(void))completion {

    [UIView animateWithDuration:0.33f animations:^{
        self.view.layer.transform = CATransform3DRotate(self.view.layer.transform, 10.0f * M_PI / 180.0f, 1.0f, 0.0f, 0.0f);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:0.33f animations:^{
            self.view.layer.transform = CATransform3DRotate(CATransform3DIdentity, -90.0f * M_PI / 180.0f, 0.0, 0.0, 1.0);
        } completion:^(BOOL finished) {
        }];

    }];

    [self dismissViewControllerAnimated:flag completion:completion];
}

@end
