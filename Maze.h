//
//  Maze.h
//  CocoaMaze
//
//  Created by Chris McGrath on 08/03/2008.
//  Copyright 2008 Christopher McGrath. All rights reserved.
//

#import <Cocoa/Cocoa.h>
// Backtrack Solution   Border    Walls
// 0 0 0 0   0 0 0 0   0 0 0 0   0 0 0 0
// W S E N   W S E N   W S E N   W S E N

enum _MazeWalls {
  MazeAllWalls    =  15,
  MazeNorthBorder =  16,
  MazeEastBorder  =  32,
  MazeSouthBorder =  64,
  MazeWestBorder  = 128
};
typedef NSInteger MazeWalls;

@interface Maze : NSObject {
  int width;
  int height;
  
@protected
  NSMutableArray *maze;
}

@property int width;
@property int height;
@property (retain) NSMutableArray *maze;

- (id)initWithWidth: (int)w height: (int)h;
- (NSMutableArray *)createMaze;
@end
