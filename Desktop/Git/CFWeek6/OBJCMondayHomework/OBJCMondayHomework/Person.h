//
//  Person.h
//  OBJCMondayHomework
//
//  Created by Jacob Dobson on 11/16/16.
//  Copyright © 2016 Jacob Dobson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

//MARK: accessor methods
-(NSString*)name;
-(void)setName:(NSString*)name;
-(int)age;
-(void)setAge:(int)age;

-(void)peopleArrayPrint:(NSArray*)arr;

//MARK: instance methods
-(void)walk;

//MARK: class methods
+(void)sayHello;

@end
