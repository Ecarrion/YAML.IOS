//
//  YAMLAppDelegate.h
//  YAML
//
//  Created by Ernesto Carrión on 5/5/11.
//  Copyright 2011 Kogi Mobile. All rights reserved.
//

#import <UIKit/UIKit.h>

@class YAMLViewController;

@interface YAMLAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet YAMLViewController *viewController;

@end
