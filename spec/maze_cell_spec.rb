require File.dirname(__FILE__) + '/spec_helper'

uses_bundle('CocoaMaze', :MazeCell)

describe MazeCell, ".initWithPoint (NSPoint)p" do
  before(:each) do
    @cell = MazeCell.alloc.initWithPoint(OSX::NSMakePoint(1, 2))
  end
  
  it "should set the x and y coordinates from the point" do
    @cell.x.should == 1
    @cell.y.should == 2
  end
end

describe MazeCell, ".northWall" do
  it "is true when cell has north wall" do
    cell = MazeCell.alloc.init
    cell.northWall = true
    cell.should be_northWall
  end

  it "is false when cell doesn't have north wall" do
    cell = MazeCell.alloc.init
    cell.northWall = false
    cell.should_not be_northWall
  end
end

describe MazeCell, ".southWall" do
  it "is true when cell has north wall" do
    cell = MazeCell.alloc.init
    cell.southWall = true
    cell.should be_southWall
  end

  it "is false when cell doesn't have south wall" do
    cell = MazeCell.alloc.init
    cell.southWall = false
    cell.should_not be_southWall
  end
end

describe MazeCell, ".eastWall" do
  it "is true when cell has east wall" do
    cell = MazeCell.alloc.init
    cell.eastWall = true
    cell.should be_eastWall
  end

  it "is false when cell doesn't have east wall" do
    cell = MazeCell.alloc.init
    cell.eastWall = false
    cell.should_not be_eastWall
  end
end

describe MazeCell, ".westWall" do
  it "is true when cell has west wall" do
    cell = MazeCell.alloc.init
    cell.westWall = true
    cell.should be_westWall
  end

  it "is false when cell doesn't have west wall" do
    cell = MazeCell.alloc.init
    cell.westWall = false
    cell.should_not be_westWall
  end
end