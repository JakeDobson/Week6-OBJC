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

@property (weak, nonatomic) IBOutlet UITableView *tableView;
//@property (weak, nonatomic) NSArray *allStudents


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.estimatedRowHeight = 75;
    self.tableView.rowHeight = UITableViewAutomaticDimension;

    NSLog(@"%@", allStudents);

    //create a new student to save
    //Student *newStudent [[Student alloc]initWithFirstName:@"Jake" lastName:@"Dobson"

    //[[Student Store
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    //dequeue cell
    
    //allStudents array
    //    NSArray *allStudents = [[StudentStore shared]allStudents];
    //Student *currentStudent = allStudents[indexPath.row];
    //cell.textLabel.text = currentStudent.firstName;
    
    return cell;

}

@end
