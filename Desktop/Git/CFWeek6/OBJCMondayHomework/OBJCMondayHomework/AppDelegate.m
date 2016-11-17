//
//  AppDelegate.m
//  OBJCMondayHomework
//
//  Created by Jacob Dobson on 11/16/16.
//  Copyright © 2016 Jacob Dobson. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController+Identifier.h"

extern int gMoveNumber;

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    NSLog(@"AppDelegate: %i", gMoveNumber);
    
    ViewController *myVC = [[ViewController alloc] init]; // new instance of VC
    NSString *identifier = [myVC identifier]; // identifier from "ViewController+Identifier"
    
    NSLog(@"%@", identifier);
    
    return YES;
}
@end
