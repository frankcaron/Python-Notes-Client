//
//  Note.h
//  Python-Notes-iOSClient
//
//  Created by Frank Caron on 2013-07-16.
//  Copyright (c) 2013 Frank Caron. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Note : NSManagedObject

@property (nonatomic, retain) NSString * note_content;
@property (nonatomic, retain) NSString * note_creator;
@property (nonatomic, retain) NSString * note_date_updated;
@property (nonatomic, retain) NSNumber * note_id;
@property (nonatomic, retain) NSString * note_title;
@property (nonatomic, retain) NSNumber * notepad_id_key;

@end
