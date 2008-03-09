//
//  MazeCell.h
//  CocoaMaze
//
//  Created by Chris McGrath on 08/03/2008.
//  Copyright 2008 Christopher McGrath. All rights reserved.
//

#import <Cocoa/Cocoa.h>


@interface MazeCell : NSObject {
@protected
  NSPoint location;
}

@property NSPoint location;
@property (readonly) int x;
@property (readonly) int y;
  
- (id)initWithPoint: (NSPoint)p;
@end
