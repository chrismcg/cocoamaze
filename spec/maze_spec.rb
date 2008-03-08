require 'rubygems'
require 'spec'
require 'osx/cocoa'

bundle_path = File.dirname(__FILE__) + '/../build/Debug/CocoaMaze.bundle'
bundle = OSX::NSBundle.alloc.initWithPath(bundle_path)
bundle.load
Maze = bundle.principalClass

describe Maze, ".alloc.initWithWidth: w height: h" do
  before(:each) do
    @maze = Maze.alloc.initWithWidth_height(15, 20)
  end
  
  it "should set the width to the w value" do
    @maze.width.should == 15
  end

  it "should set the height to the h value" do
    @maze.height.should == 20
  end
end