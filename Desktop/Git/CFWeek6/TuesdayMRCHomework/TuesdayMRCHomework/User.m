//
//  User.m
//  TuesdayMRCHomework
//
//  Created by Jacob Dobson on 11/16/16.
//  Copyright © 2016 Jacob Dobson. All rights reserved.
//

#import "User.h"

@interface User() <NSCopying>

@end

@implementation User

-(instancetype) initWithName:(NSString *)userName withEmail:(NSString *)userEmail withAge:(NSNumber *)userAge {
    self = [super init];
    
    if (self) {
        self.name = userName;
        self.email = userEmail;
        self.age = userAge;
    }
    return self;
}

-(id)copyWithZone:(struct _NSZone*)zone {
    User *user = [[User alloc]init];
    
    [user autorelease];
    
    return user;
}

//MARK: setters
-(void)setName:(NSString*)name {
    if (_name != name) {
        [name retain]; // increment ref count by 1
        [name release]; // decrement ref count by 1
        
        _name = name;
    }
}

-(void)setEmail:(NSString*)email {
    if (_email != email ) {
        [email retain];
        [email release];
        
        _email = email;
    }
}

-(void)setAge:(NSNumber*)age {
    if (_age != age) {
        [age retain];
        [age release];
        
        _age = age;
    }
}

//MARK: getters
-(NSString*)name {
    return _name;
}

-(NSString*)email {
    return _email;
}

-(NSNumber*)age {
    return _age;
}

-(NSString*)description {
    NSString *description = [[NSString alloc]initWithFormat:@"NAME:%@ - EMAIL:%@ AGE:%@", self.name, self.email, self.age];
    
    [description autorelease];
    
    return description;
}

-(void)dealloc {
    [_name release];
    [_email release];
    [_age release];
    
    _name = nil;
    _email = nil;
    _age = nil;
    
    NSLog(@"%li", [self retainCount]);
    
    [super dealloc]; // make sure to always call this last!!!
}

@end
