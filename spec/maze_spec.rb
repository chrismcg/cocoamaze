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
end