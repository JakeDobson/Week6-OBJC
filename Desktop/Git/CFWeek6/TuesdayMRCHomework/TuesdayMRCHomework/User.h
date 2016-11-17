//
//  User.h
//  TuesdayMRCHomework
//
//  Created by Jacob Dobson on 11/16/16.
//  Copyright © 2016 Jacob Dobson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject {
    NSString * _name;
    NSString * _email;
    NSNumber * _age;
}

//MARK: init
-(instancetype)initWithName:(NSString*)userName withEmail:(NSString*)userEmail withAge:(NSNumber*)userAge;

//MARK: accessor methods
// setters
-(void)setName:(NSString*)name;
-(void)setEmail:(NSString*)email;
-(void)setAge:(NSNumber*)age;
// getters
-(NSString*)email;
-(NSString*)name;
-(NSNumber*)age;

-(NSString*)description;

@end
