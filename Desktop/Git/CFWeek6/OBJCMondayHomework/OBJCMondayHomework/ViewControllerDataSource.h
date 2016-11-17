//
//  ViewControllerDataSource.h
//  OBJCMondayHomework
//
//  Created by Jacob Dobson on 11/16/16.
//  Copyright © 2016 Jacob Dobson. All rights reserved.
//

//protocols only consist of a .h file

#import <Foundation/Foundation.h>

@protocol ViewControllerDataSource <NSObject>

@required
//here is where you list any REQUIRED methods of this protocol

-(void)numberOfCellsForTableView;

@optional
//here is where you list any OPTIONAL methods of this protocol

-(NSString*)optionallyDoSomeStuff;

@end
