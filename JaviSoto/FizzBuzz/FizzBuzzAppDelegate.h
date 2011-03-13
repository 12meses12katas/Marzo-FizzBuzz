//
//  FizzBuzzAppDelegate.h
//  FizzBuzz
//
//  Created by Javier Soto on 3/13/11.
//  Copyright 2011 www.minube.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FizzBuzzViewController;

@interface FizzBuzzAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet FizzBuzzViewController *viewController;

@end
