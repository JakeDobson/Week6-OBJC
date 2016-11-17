//
//  AppDelegate.m
//  TuesdayMRCHomework
//
//  Created by Jacob Dobson on 11/16/16.
//  Copyright © 2016 Jacob Dobson. All rights reserved.
//

#import "AppDelegate.h"
#import "User.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    User *newUser = [[User alloc]init];
    
    [newUser setName:@"Jake"];
    [newUser setEmail:@"jake.dobson@gmail.com"];
    [newUser setAge:@25];
    
    NSLog(@"%@", newUser.description);
    
    [newUser release];
    
    return YES;
}
@end
