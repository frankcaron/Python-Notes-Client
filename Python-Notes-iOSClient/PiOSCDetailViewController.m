//
//  PiOSCDetailViewController.m
//  Python-Notes-iOSClient
//
//  Created by Frank Caron on 2013-07-17.
//  Copyright (c) 2013 Frank Caron. All rights reserved.
//

#import "PiOSCDetailViewController.h"

@interface PiOSCDetailViewController ()

@end

@implementation PiOSCDetailViewController

//Synth View Fields
@synthesize noteTitleLabel;
@synthesize noteContentLabel;
@synthesize noteAuthorLabel;
@synthesize noteDateLabel;
@synthesize noteTitle;
@synthesize noteContent;
@synthesize noteAuthor;
@synthesize noteDate;

//Default
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    noteTitleLabel.text = noteTitle;
    noteContentLabel.text = noteContent;
    noteAuthorLabel.text = noteAuthor;
    noteDateLabel.text = noteDate;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
