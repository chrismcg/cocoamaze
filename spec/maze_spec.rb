require File.dirname(__FILE__) + '/spec_helper'

Maze = load_bundle_principle_class('CocoaMaze')

describe Maze, ".alloc.initWithWidth: w height: h" do
  before(:each) do
    @width = 5
    @height = 7
    @maze = Maze.alloc.initWithWidth_height(@width, @height)
  end
  
  it "should set the width to the w value" do
    @maze.width.should == @width
  end

  it "should set the height to the h value" do
    @maze.height.should == @height
  end
  
  it "should initialize the maze to all walls" do
    0.upto(@width - 1) do |i|
      0.upto(@height - 1) do |j|
        @maze.cellAtX_Y(i, j).should be_all_walls
      end
    end
  end
  
  it "should initialize the border cells at the edge of the rectangle" do
    # top of rectangle should be north border and bottom should be south border
    0.upto(@width - 1) do |i|
      @maze.cellAtX_Y(i, 0).should be_north_border
      @maze.cellAtX_Y(i, @height - 1).should be_south_border
    end
    # LHS of rectangle should be west border, RHS should be east border
    0.upto(@height - 1) do |i|
      @maze.cellAtX_Y(0, i).should be_west_border
      @maze.cellAtX_Y(@width - 1, i).should be_east_border
    end
  end
end