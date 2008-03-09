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

####################################################
# WALLS
####################################################

describe MazeCell, ".northWall" do
  before(:each) { @cell = MazeCell.alloc.init }
  
  it "is true when cell has north wall" do
    @cell.northWall = true
    @cell.should be_northWall
  end

  it "is false when cell doesn't have north wall" do
    @cell.northWall = false
    @cell.should_not be_northWall
  end
end

describe MazeCell, ".southWall" do
  before(:each) { @cell = MazeCell.alloc.init }

  it "is true when cell has north wall" do
    @cell.southWall = true
    @cell.should be_southWall
  end

  it "is false when cell doesn't have south wall" do
    @cell.southWall = false
    @cell.should_not be_southWall
  end
end

describe MazeCell, ".eastWall" do
  before(:each) { @cell = MazeCell.alloc.init }

  it "is true when cell has east wall" do
    @cell.eastWall = true
    @cell.should be_eastWall
  end

  it "is false when cell doesn't have east wall" do
    @cell.eastWall = false
    @cell.should_not be_eastWall
  end
end

describe MazeCell, ".westWall" do
  before(:each) { @cell = MazeCell.alloc.init }

  it "is true when cell has west wall" do
    @cell.westWall = true
    @cell.should be_westWall
  end

  it "is false when cell doesn't have west wall" do
    @cell.westWall = false
    @cell.should_not be_westWall
  end
end

####################################################
# BORDERS
####################################################

describe MazeCell, ".northBorder" do
  before(:each) { @cell = MazeCell.alloc.init }
  
  it "is true when cell has north border" do
    @cell.northBorder = true
    @cell.should be_northBorder
  end

  it "is false when cell doesn't have north border" do
    @cell.northBorder = false
    @cell.should_not be_northBorder
  end
end

describe MazeCell, ".southBorder" do
  before(:each) { @cell = MazeCell.alloc.init }

  it "is true when cell has north border" do
    @cell.southBorder = true
    @cell.should be_southBorder
  end

  it "is false when cell doesn't have south border" do
    @cell.southBorder = false
    @cell.should_not be_southBorder
  end
end

describe MazeCell, ".eastBorder" do
  before(:each) { @cell = MazeCell.alloc.init }

  it "is true when cell has east border" do
    @cell.eastBorder = true
    @cell.should be_eastBorder
  end

  it "is false when cell doesn't have east border" do
    @cell.eastBorder = false
    @cell.should_not be_eastBorder
  end
end

describe MazeCell, ".westBorder" do
  before(:each) { @cell = MazeCell.alloc.init }

  it "is true when cell has west border" do
    @cell.westBorder = true
    @cell.should be_westBorder
  end

  it "is false when cell doesn't have west border" do
    @cell.westBorder = false
    @cell.should_not be_westBorder
  end
end