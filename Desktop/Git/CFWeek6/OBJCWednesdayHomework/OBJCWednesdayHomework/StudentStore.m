//
//  StudentStore.m
//  OBJCWednesdayHomework
//
//  Created by Jacob Dobson on 11/17/16.
//  Copyright © 2016 Jacob Dobson. All rights reserved.
//

#import "StudentStore.h"

@interface StudentStore ()

@property(strong, nonatomic)NSMutableDictionary *students;

@end


@implementation StudentStore

//singleton
+(instancetype)shared {
    static StudentStore *shared = nil;
    
    //GCD, using Dispatch Once
    static dispatch_once_t dispatchOnceToken;
    
    dispatch_once(&dispatchOnceToken, ^{
        shared = [[StudentStore alloc]init];
    });
    return shared;
}

//init
-(instancetype)init {
    self = [super init];
    
    if (self) {
        self.students = [NSKeyedUnarchiver unarchiveObjectWithData:[NSData dataWithContentsOfURL:self.archiveURL]];
        
        if(!self.students) {
            self.students = [[NSMutableDictionary alloc]init];
        }
    }
    return self;
}

-(NSInteger)count {
    return self.students.count;
}

-(NSArray *)allStudents {
    NSMutableArray *results = [[NSMutableArray alloc]init];
    
    for (Student *student in self.students.allValues) {
        [results addObject:[student copy]];
    }
    return results;
}

-(void)add:(Student*)student {
    if ([self.students objectForKey:[student email]]) {
        [self.students setObject:student forKey:student.email];
        [self save];
    } else {
        NSLog(@"Student is already on the class roster. EMAIL: %@, NAME: %@ %@", [student email], [student firstName], [student lastName]);
    }
}

-(void)remove:(Student*)student {
    if (![self.students objectForKey:[student email]]) {
        [self.students removeObjectForKey:student.email];
        [self save];
    } else {
        NSLog(@"Student has been removed from the class roster. EMAIL: %@, NAME: %@ %@", [student email], [student firstName], [student lastName]);
    }
}

-(void)save {
    //save students arr to archiveURL
    BOOL success = [NSKeyedArchiver archiveRootObject:self.students toFile:self.archiveURL.path]; //.path makes archiveURL a ""
    
    NSLog(@"Saved: %i", success);
}

//create location for student store to save
-(NSURL*)archiveURL {
    NSURL *documentsDirectory = [[[NSFileManager defaultManager]URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask]firstObject];
    
    return [documentsDirectory URLByAppendingPathComponent:@"archive"];
}

@end
