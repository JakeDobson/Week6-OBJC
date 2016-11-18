//
//  Student.h
//  OBJCWednesdayHomework
//
//  Created by Jacob Dobson on 11/18/16.
//  Copyright © 2016 Jacob Dobson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject <NSCopying, NSCoding>

//properties
@property (strong, nonnull)NSString *firstName;
@property (strong, nonnull)NSString *lastName;
@property (strong, nonnull)NSString *email;
@property (strong, nonnull)NSString *phone;

//custom initializer
-(instancetype)initWithFirstName:(NSString*)firstName lastName:(NSString*)lastName email:(NSString*)email phone:(NSString*)phone;

@end
