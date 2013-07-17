//
//  Note.h
//  Python-Notes-iOSClient
//
//  Created by Frank Caron on 2013-07-17.
//  Copyright (c) 2013 Frank Caron. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Note : NSObject

@property (nonatomic, copy) NSString * note_content;
@property (nonatomic, copy) NSString * note_creator;
@property (nonatomic, copy) NSString * note_date_updated;
@property (nonatomic, copy) NSString * note_id;
@property (nonatomic, copy) NSString * note_title;
@property (nonatomic, copy) NSString * notepad_id_key;

@end
