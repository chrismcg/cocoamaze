require 'rubygems'
require 'spec'
require 'osx/cocoa'

def load_bundle_principle_class(bundle_name)
  bundle_path = File.dirname(__FILE__) + "/../build/Debug/#{bundle_name}.bundle"
  bundle = OSX::NSBundle.alloc.initWithPath(bundle_path)
  bundle.load
  bundle.principalClass
end

class BeAllWalls
  def matches?(actual)
    @actual = actual
    @actual == 15
  end

  def failure_message
    "expected #{@actual} to be all walls, but it wasn't"
  end

  def negative_failure_message
    "expected #{@actual} not to all walls, but it was"
  end
end

def be_all_walls
  BeAllWalls.new
end