//
//  ASQueue.h
//  ASQueue
//
//  Created by Amit Shah on 07/08/2011.
//  Copyright 2011 Amwam. All rights reserved.
//

@interface ASQueue : NSObject
{
    NSMutableArray *objects;
}

/*
 *  Adds an object to the back of the queue
 */
-(void)enqueue:(id)_object;

/*
 *  returns the first object in the queue (the first one added)
 *  increases the retain count of this object, and removes it from the queue
 */
-(id)dequeue;

/*
 *  Returns the size of the queue
 */
-(int)count;

/*
 *  Returns a refrence to the first object in the queue, does not remove it
 */
-(id)peek;
@end
