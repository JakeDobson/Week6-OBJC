//
//  StudentStore.h
//  OBJCWednesdayHomework
//
//  Created by Jacob Dobson on 11/17/16.
//  Copyright © 2016 Jacob Dobson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

@interface StudentStore : NSObject

//singleton
+(instancetype)shared;

-(NSInteger)count;
-(NSArray *)allStudents;

-(void)add:(Student*)student;
-(void)remove:(Student*)student;
-(void)save;

@end
