//
//  NSString+PeopleArray.m
//  OBJCMondayHomework
//
//  Created by Jacob Dobson on 11/16/16.
//  Copyright © 2016 Jacob Dobson. All rights reserved.
//

#import "NSString+PeopleArray.h"

@implementation NSString (PeopleArray)

-(NSArray*)separateString {
    return [self componentsSeparatedByString:@" "];
}

@end
