//
//  Maze.h
//  CocoaMaze
//
//  Created by Chris McGrath on 08/03/2008.
//  Copyright 2008 Christopher McGrath. All rights reserved.
//

#import <Cocoa/Cocoa.h>

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
