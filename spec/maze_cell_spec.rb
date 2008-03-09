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