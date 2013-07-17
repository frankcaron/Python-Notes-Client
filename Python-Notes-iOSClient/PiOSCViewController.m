//
//  PiOSCViewController.m
//  Python-Notes-iOSClient
//
//  Created by Frank Caron on 2013-07-16.
//  Copyright (c) 2013 Frank Caron. All rights reserved.
//

#import "PiOSCViewController.h"
#import "PiOSCDetailViewController.h"
#import "PiOSCRestController.h"

@interface PiOSCViewController ()

@end

@implementation PiOSCViewController  {
    
    //Connector
    PiOSCRestController *connector;
    
    //Table Data
    NSArray *tableData;
    NSArray* notes;
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //Instantiate REST connector
    connector = [[PiOSCRestController alloc] init];
    
    // Fetch Notes List
    notes = [connector getNotes];
    
    //Create list of titles
    NSMutableArray* notesTitleList = [[NSMutableArray alloc] init];
    for (Note* note in notes) {
        [notesTitleList addObject:[note note_title]];
    }
    
    //Populate Table
    tableData = notesTitleList;
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

- (UITableViewCell *)tableView:(UITableView *)tableViewTemp cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"NoteCell";
    
    UITableViewCell *cell = [tableViewTemp dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    //Handle the passing of Note data to the detail view
    if ([segue.identifier isEqualToString:@"showNoteDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        PiOSCDetailViewController *destViewController = segue.destinationViewController;
        destViewController.noteTitle = [[notes objectAtIndex:indexPath.row] note_title];
        destViewController.noteContent = [[notes objectAtIndex:indexPath.row] note_content];
        destViewController.noteAuthor = [[notes objectAtIndex:indexPath.row] note_creator];
        destViewController.noteDate = [[notes objectAtIndex:indexPath.row] note_date_updated];
    }
}

@synthesize tableView;

@end
