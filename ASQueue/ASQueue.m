//
//  ASQueue.m
//  ASQueue
//
//  Created by Amit Shah on 07/08/2011.
//  Copyright 2011 Amwam. All rights reserved.
//

#import "ASQueue.h"

@implementation ASQueue

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
        objects = [[NSMutableArray alloc] init];
    }
    
    return self;
}


-(void)enqueue:(id)_object
{
    [objects addObject:_object]; //Add the object to the end of the queue
}

-(id)dequeue
{
    //get the object and increase the retain count
    id returnObj = [[objects objectAtIndex:0] retain];
    
    //remove it from the queue
    [objects removeObjectAtIndex:0];
    
    return returnObj; //return
}

-(int)count
{
    return ((int)[objects count]);
}

-(id)peek
{
    return [objects objectAtIndex:0];
}

-(void)dealloc
{
    [objects release];
    [super dealloc];
}

@end
