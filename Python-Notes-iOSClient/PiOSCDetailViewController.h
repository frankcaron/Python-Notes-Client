//
//  PiOSCDetailViewController.h
//  Python-Notes-iOSClient
//
//  Created by Frank Caron on 2013-07-17.
//  Copyright (c) 2013 Frank Caron. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PiOSCDetailViewController : UIViewController

@property (nonatomic, strong) IBOutlet UILabel *noteTitleLabel;
@property (nonatomic, strong) IBOutlet UILabel *noteContentLabel;
@property (nonatomic, strong) IBOutlet UILabel *noteAuthorLabel;
@property (nonatomic, strong) IBOutlet UILabel *noteDateLabel;
@property (nonatomic, strong) NSString *noteTitle;
@property (nonatomic, strong) NSString *noteContent;
@property (nonatomic, strong) NSString *noteAuthor;
@property (nonatomic, strong) NSString *noteDate;

@end
