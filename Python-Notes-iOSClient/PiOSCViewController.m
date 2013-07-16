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

@implementation PiOSCViewController {
    //Connector
    PiOSCRestController *connector;
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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
