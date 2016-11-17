//
//  ViewController.m
//  OBJCMondayHomework
//
//  Created by Jacob Dobson on 11/16/16.
//  Copyright © 2016 Jacob Dobson. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "ViewControllerDataSource.h"

//MARK: globals
int gMoveNumber = 10;

@interface ViewController () <ViewControllerDataSource>

@end

@implementation ViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"VC: %i", gMoveNumber); // accessing global var above
    
    Person *person = [[Person alloc]init]; // instance of Person class(get used to this line of code!
                           
    [person setName:@"Jake"]; // assign name of testSubject using string literal
    
    NSString *name = [person name]; //new local var of name(similar to testSubject.name if in swift
                            
    NSLog(@"Person: %@ - Name: %@", person, name);
    
    [person walk]; // instance method call
    
    [Person sayHello]; // class method call
    
    NSArray *arr = @[@"Jake", @"Jim", @"Lana", @"Jordan", @"Josh", @"Jenna"];
    
    [person peopleArrayPrint:arr]; // swift = person.peopleArrayPrint(peopleArray)
}

//MARK: ViewControllerDataSource require method
-(void)numberOfCellsForTableView {
    // chose to make this @required in the VCDS protocol
}
                            
@end
