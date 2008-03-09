//
//  Maze.m
//  CocoaMaze
//
//  Created by Chris McGrath on 08/03/2008.
//  Copyright 2008 Christopher McGrath. All rights reserved.
//

#import "Maze.h"


@implementation Maze

@synthesize width;
@synthesize height;
@synthesize maze;

- (NSNumber *)cellAtX: (int)x Y: (int)y {
  return [[self.maze objectAtIndex: x] objectAtIndex: y];
}

- (id)init {
  return [self initWithWidth:10 height:10];
}

- (id)initWithWidth: (int)w height: (int)h {
  [super init];
  if (self != nil) {
    self.width= w;
    self.height = h;
    self.maze = [self createMaze];
  }
  return self;
}

- (NSMutableArray *)createMaze {
  NSMutableArray *_maze = [NSMutableArray arrayWithCapacity: self.width];
  for(size_t i = 0; i < self.width; ++i) {
    NSMutableArray *col = [NSMutableArray arrayWithCapacity: self.height];
    [_maze insertObject: col atIndex: i];
    for(size_t j = 0; j < self.height; ++j) {
      int cellType = 0;// MazeAllWalls;
      //       if (j == 0)               { cellType = cellType | MazeNorthBorder; }
      //       if (j == self.height - 1) { cellType = cellType | MazeSouthBorder; }
      //       if (i == 0)               { cellType = cellType | MazeWestBorder; }
      //       if (i == self.width - 1)  { cellType = cellType | MazeEastBorder; }
      [col insertObject: [NSNumber numberWithInt: cellType] atIndex: j];
    }
  }
  return _maze;
}

@end
