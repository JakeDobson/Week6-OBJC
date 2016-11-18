//
//  ViewController.m
//  OBJCWednesdayHomework
//
//  Created by Jacob Dobson on 11/17/16.
//  Copyright © 2016 Jacob Dobson. All rights reserved.
//

#import "ViewController.h"
#import "StudentStore.h"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

//@property (weak, nonatomic) NSArray *allStudents;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.estimatedRowHeight = 75;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    
    NSArray *allStudents = [[StudentStore shared] allStudents];
    NSLog(@"Students array: %@", allStudents);

    //create new students to save
    Student *Jake = [[Student alloc]initWithFirstName:@"Jake" lastName:@"Dobson" email:@"jake.dobson@gmail.com" phone:@"815-557-0928"];
    [[StudentStore shared] add:Jake];
    
    Student *Jordan = [[Student alloc]initWithFirstName:@"Joradn" lastName:@"Dobson" email:@"joradndobson@gmail.com" phone:@"425-444-8014"];
    [[StudentStore shared] add:Jordan];
    
    Student *Josh = [[Student alloc]initWithFirstName:@"Josh" lastName:@"Dobson" email:@"josh.dobson@gmail.com" phone:@"206-235-8673"];
    [[StudentStore shared] add:Josh];
    
    Student *Jenna = [[Student alloc]initWithFirstName:@"Jenna" lastName:@"Dobson" email:@"jenna.dobson@gmail.com" phone:@"815-806-1220"];
    [[StudentStore shared] add:Jenna];
    
    Student *James = [[Student alloc]initWithFirstName:@"James" lastName:@"Dobson" email:@"james.dobson@gmail.com" phone:@"815-715-1590"];
    [[StudentStore shared] add:James];
}


//MARK: TableViewDataSource Methods...
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[[StudentStore shared]allStudents]count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    //dequeue cell
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    Student *currentStudent = [[[StudentStore shared]allStudents]objectAtIndex:indexPath.row];
    
    cell.textLabel.text = [NSString stringWithFormat:@"Name: %@ %@", [currentStudent firstName], [currentStudent lastName]];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"Email: %@ Phone: %@", [currentStudent email], [currentStudent phone]];
    
    return cell;
}

@end
