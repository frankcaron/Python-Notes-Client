//
//  PiOSCRestController.m
//  Python-Notes-iOSClient
//
//  Created by Frank Caron on 2013-07-16.
//  Copyright (c) 2013 Frank Caron. All rights reserved.
//

#import "PiOSCRestController.h"
#import "Note.h"

@implementation PiOSCRestController

// =====================================================================
//
// getNotes
//
// Returns an array of Note objects polled from the Pythonotes service
//
// =====================================================================

- (NSArray*)getNotes {
    
    // Fetch Data ------------------
    // ---------------------------------
    
    //Prepare to establish the connection
    NSURL *url = [NSURL URLWithString:@"http://tranquil-hollows-2798.herokuapp.com/notes"];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    
    [request setHTTPMethod:@"GET"];
    [request setValue:@"*/*" forHTTPHeaderField:@"Accept"];
    
    NSHTTPURLResponse *response = nil;
    NSError *error = nil;
    
    //Make the request
    responseData = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
    
    //Parse the data as a series of Note objects
    NSDictionary* json = [NSJSONSerialization
                          JSONObjectWithData:responseData //1
                          options:kNilOptions
                          error:&error];
    
    //Get the notes list
    json = [json objectForKey:@"notes"];
    
    //Create a Note object
    NSMutableArray* notes = [[NSMutableArray alloc] init];
    for (id object in json) {
        //Populate new note object with the details from the parsed JSON
        Note* note = [[Note alloc] init];
        [note setNote_content:[object objectForKey:(@"note_content")]];
        [note setNote_creator:[object objectForKey:(@"note_creator")]];
        [note setNote_date_updated:[object objectForKey:(@"note_date_updated")]];
        [note setNote_id:[object objectForKey:(@"note_id")]];
        [note setNote_title:[object objectForKey:(@"note_title")]];
        [note setNotepad_id_key:[object objectForKey:(@"notepad_id_key")]];
        
        //Add the note to the array
        [notes addObject:note];
    }
    
    //Return the response
    return notes;
    
}

@end
