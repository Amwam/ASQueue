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

@end
