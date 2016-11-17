//
//  Person.m
//  OBJCMondayHomework
//
//  Created by Jacob Dobson on 11/16/16.
//  Copyright © 2016 Jacob Dobson. All rights reserved.
//

#import "Person.h"

@implementation Person

//MARK: globals
NSString *_name;
int _age;

//MARK: accessor methods(setters + getters)
-(NSString*)name { //getter
    return _name;
}

-(void)setName:(NSString*)name { //setter
    _name = name;
}

-(int)age { //getter
    return _age;
}

-(void)setAge:(int)age { //setter
    _age = age;
}

-(void)peopleArrayPrint:(NSArray*)arr {
    int x;
    for (x = 0; x < arr.count; x += 1) {
        NSLog(@"%@", [arr objectAtIndex:x]);
    }
}

//MARK: instance methods
-(void)walk {
    NSLog(@"%@ is walking...", _name);
    NSLog(@"%@ is walking...", [self name]); // _name and [self name] are equivalent
}

//MARK: class methods
+(void)sayHello {
    NSLog(@"Hello!");
}

@end
