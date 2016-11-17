//
//  ViewController.m
//  TuesdayMRCHomework
//
//  Created by Jacob Dobson on 11/16/16.
//  Copyright © 2016 Jacob Dobson. All rights reserved.
//

#import "ViewController.h"
#import "User.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableDictionary *userDict = [[NSMutableDictionary alloc]init];
    
    User *jake = [[User alloc]initWithName:@"Jake" withEmail:@"jake.dobson@gmail.com" withAge:@25]; // initializing user object
    [userDict setValue:jake forKey:jake.email]; // setting value for new user with name as value and email for key
    
    User *jim = [[User alloc]initWithName:@"Jim" withEmail:@"jim.dobson@gmail.com" withAge:@66];
    [userDict setValue:jim forKey:jim.email];
    
    User *lana = [[User alloc]initWithName:@"Lana" withEmail:@"Lana.dobson@gmail.com" withAge:@64];
    [userDict setValue:lana forKey:lana.email];
    
    User *jordan = [[User alloc]initWithName:@"Jordan" withEmail:@"jordandobson@gmail.com" withAge:@37];
    [userDict setValue:jordan forKey:jordan.email];
    
    User *josh = [[User alloc]initWithName:@"Josh" withEmail:@"josh.dobson@gmail.com" withAge:@66];
    [userDict setValue:josh forKey:josh.email];
    
    [userDict release];
        
}
@end



/*

User *user1; {
    user1.name = @"Jake";
    user1.email = @"jake.dobson@gmail.com";
    user1.age = @25;
    
    [user1 autorelease];
}

User *user2; {
    user2.name = @"Jim";
    user2.email = @"jim.dobson@gmail.com";
    user2.age = @66;
    
    [user2 autorelease];
}

User *user3; {
    user3.name = @"Lana";
    user3.email = @"lana.dobson@gmail.com";
    user3.age = @64;
    
    [user3 autorelease];
}

User *user4; {
    user4.name = @"Jordan";
    user4.email = @"jordandobson@gmail.com";
    user4.age = @37;
    
    [user4 autorelease];
}

User *user5; {
    user5.name = @"Josh";
    user5.email = @"joshua.dobson@gmail.com";
    user5.age = @35;
    
    [user5 autorelease];
}

NSMutableDictionary *mutableDictionary = [[NSMutableDictionary alloc]init]; {
    mutableDictionary = @{user1.email:user1.name, user2.email:user2.name, user3.email:user3.name, user4.email:user4.name, user5.email:user5.name};
    
    [mutableDictionary autorelease];
}
 
*/
