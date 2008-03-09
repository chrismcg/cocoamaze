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
@synthesize data;

WALL_SETTER(North)
WALL_GETTER(north, North)
WALL_SETTER(South)
WALL_GETTER(south, South)
WALL_SETTER(East)
WALL_GETTER(east, East)
WALL_SETTER(West)
WALL_GETTER(west, West)

BORDER_SETTER(North)
BORDER_GETTER(north, North)
BORDER_SETTER(South)
BORDER_GETTER(south, South)
BORDER_SETTER(East)
BORDER_GETTER(east, East)
BORDER_SETTER(West)
BORDER_GETTER(west, West)

- (int)x { return self.location.x; }
- (int)y { return self.location.y; }

- (id)init {
  return [self initWithPoint: NSMakePoint(1, 1)];
}

- (id)initWithPoint: (NSPoint)point {
  [super init];
  if (self != nil) {
    self.location = point;
    self.data = 0;
  }
  return self;
}

@end
