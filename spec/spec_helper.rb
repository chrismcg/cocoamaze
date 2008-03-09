require 'rubygems'
require 'spec'
require 'osx/cocoa'

def uses_bundle(bundle_name, *klasses)
  bundle_path = File.dirname(__FILE__) + "/../build/Debug/#{bundle_name}.bundle"
  bundle = OSX::NSBundle.alloc.initWithPath(bundle_path)
  bundle.load
  klasses.each { |klass| get_class(klass) }
end

def get_class(sym)
  klass = if clsobj = OSX::NSClassFromString(sym)
    if rbcls = OSX.class_new_for_occlass(clsobj)
      Object.const_set(sym, rbcls)
    end
  end
end

class BeAllWalls
  def matches?(actual)
    @actual = actual
    @actual.northWall && @actual.southWall && @actual.eastWall && @actual.westWall
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
