//
//  PiOSCRestController.h
//  Python-Notes-iOSClient
//
//  Created by Frank Caron on 2013-07-16.
//  Copyright (c) 2013 Frank Caron. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Note.h"

@interface PiOSCRestController : NSObject {

    //Variables ----

    //JSON Connector
    NSMutableDictionary *connectJSON;

    //JSON Data Container
    NSData* jsonData;

    //JSON Response
    NSData *responseData;
    NSArray *responseArray;
}

//Methods
- (NSArray*)getNotes;

@end
