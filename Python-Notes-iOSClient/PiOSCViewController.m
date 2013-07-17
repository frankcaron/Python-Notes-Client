//
//  PiOSCViewController.m
//  Python-Notes-iOSClient
//
//  Created by Frank Caron on 2013-07-16.
//  Copyright (c) 2013 Frank Caron. All rights reserved.
//

#import "PiOSCViewController.h"
#import "PiOSCRestController.h"

@interface PiOSCViewController ()

@end

@implementation PiOSCViewController  {
    
    //Connector
    PiOSCRestController *connector;
    
    //Table Data
    NSArray *tableData;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ REST Impl ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    
    //Instantiate REST connector
    connector = [[PiOSCRestController alloc] init];
    
    // Fetch EPG Data
    NSData* responseData = [connector getNotes];
    tableData = [NSKeyedUnarchiver unarchiveObjectWithData:responseData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//Table Functions
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
    return cell;
}

@end
