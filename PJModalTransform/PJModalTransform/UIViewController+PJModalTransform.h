//
//  UIViewController+PJModalTransform.h
//  
//
//  Created by PJ Gray on 9/11/12.
//  Copyright (c) 2012 PJ Gray. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (PJModalTransform)

- (void) transformPresentViewController:(UIViewController*) viewController animated:(BOOL)flag completion:(void (^)(void))completion;
- (void) transformDismissViewControllerAnimated:(BOOL)flag completion:(void (^)(void))completion;

@end
