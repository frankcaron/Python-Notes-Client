//
//  PiOSCRestController.m
//  Python-Notes-iOSClient
//
//  Created by Frank Caron on 2013-07-16.
//  Copyright (c) 2013 Frank Caron. All rights reserved.
//

#import "PiOSCRestController.h"

@implementation PiOSCRestController

// =====================================================================
//
// createAuthRestSession
//
// Method to create an authenticated REST session with the MINT API
//
// =====================================================================


// =====================================================================
//
// getRESTEPGData
//
// Method to pull EPG Data for today from the RESTful MINT API
//
// =====================================================================

- (NSData*)getNotes {
    
    // Fetch EPG Data ------------------
    // ---------------------------------
    
    //Prepare to establish the connection
    NSURL *url = [NSURL URLWithString:@"http://tranquil-hollows-2798.herokuapp.com/notes"];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    
    [request setHTTPMethod:@"GET"];
    [request setValue:@"*/*" forHTTPHeaderField:@"Accept"];
    //[request setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    //[request setValue:@"json" forHTTPHeaderField:@"Data-Type"];
    //[request setValue:[NSString stringWithFormat:@"%d", [jsonData length]] forHTTPHeaderField:@"Content-Length"];
    
    NSHTTPURLResponse *response = nil;
    NSError *error = nil;
    
    //Make the request
    responseData = [NSURLConnection sendSynchronousRequest:request returningResponse:&response error:&error];
    
    //Check for errors
    if (error != nil) {
        //Log errors
        //NSLog(@"Pull Error: %@", [error localizedDescription]);
    } else {
        //Log success
        //NSLog(@"Pull Success: %@", response);
        
        //Inform user with alert
        /* UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Success!"
                                                        message:@"Your data has been returned."
                                                       delegate:nil
                                              cancelButtonTitle:@"Ok"
                                              otherButtonTitles: nil];
        [alert show]; */
    }
    
    //Log toString version of the data
    NSString *responseString2 = [[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding];
    NSLog(@"%@", responseString2);
    
    //Parse the data as a series of Note objects
    
    
    
    //Return the response
    return responseData;
    
}

@end
