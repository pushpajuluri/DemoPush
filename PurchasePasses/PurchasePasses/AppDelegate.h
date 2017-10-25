//
//  AppDelegate.h
//  PurchasePasses
//
//  Created by OMNIWYSE on 10/12/17.
//  Copyright © 2017 myschool. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

