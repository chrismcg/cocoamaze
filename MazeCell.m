//
//  MazeCell.m
//  CocoaMaze
//
//  Created by Chris McGrath on 08/03/2008.
//  Copyright 2008 Christopher McGrath. All rights reserved.
//

#import "MazeCell.h"


@implementation MazeCell

@synthesize location;

- (int)x {
  return self.location.x;
}

- (int)y {
  return self.location.y;
}

- (id)init {
  return [self initWithPoint: NSMakePoint(1, 1)];
}

- (id)initWithPoint: (NSPoint)p {
  [super init];
  if (self != nil) {
    self.location = p;
  }
  return self;
}
@end
