//
//  MazeCell.h
//  CocoaMaze
//
//  Created by Chris McGrath on 08/03/2008.
//  Copyright 2008 Christopher McGrath. All rights reserved.
//

#import <Cocoa/Cocoa.h>

// Backtrack Solution   Border    Walls
// 0 0 0 0   0 0 0 0   0 0 0 0   0 0 0 0
// N S E W   N S E W   N S E W   N S E W

enum _MazeCellWalls {
  MazeNorthWall =   8,
  MazeSouthWall =   4,
  MazeEastWall  =   2,
  MazeWestWall  =   1,
  MazeAllWalls  =  15,

  MazeNorthBorder =  128,
  MazeSouthBorder =   64,
  MazeEastBorder  =   32,
  MazeWestBorder  =   16,
  MazeAllBorders  =  255
};
typedef NSUInteger MazeCellWalls;

#define WALL_SETTER(location) - (void)set ## location ## Wall: (BOOL)value { value ? (self.data |= Maze ## location ## Wall) : (self.data &= ~Maze ## location ## Wall); }
#define WALL_GETTER(lower_location, location) - (BOOL)lower_location ## Wall { return (self.data & Maze ## location ## Wall) == Maze ## location ## Wall; }

#define BORDER_SETTER(location) - (void)set ## location ## Border: (BOOL)value { value ? (self.data |= Maze ## location ## Border) : (self.data &= ~Maze ## location ## Border); }
#define BORDER_GETTER(lower_location, location) - (BOOL)lower_location ## Border { return (self.data & Maze ## location ## Border) == Maze ## location ## Border; }

@interface MazeCell : NSObject {
@protected
  NSUInteger data;
  
  NSPoint location;
}

@property NSUInteger data;

@property NSPoint location;
@property (readonly) int x;
@property (readonly) int y;

@property BOOL northWall;
@property BOOL southWall;
@property BOOL eastWall;
@property BOOL westWall;
@property (readonly) BOOL isAllWalls;

@property BOOL northBorder;
@property BOOL southBorder;
@property BOOL eastBorder;
@property BOOL westBorder;

- (id)initWithPoint: (NSPoint)point;
@end
