require 'rubygems'
require 'spec'
require 'osx/cocoa'

def uses_bundle(bundle_name)
  bundle_path = File.dirname(__FILE__) + "/../build/Debug/#{bundle_name}.bundle"
  bundle = OSX::NSBundle.alloc.initWithPath(bundle_path)
  bundle.load
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
    (@actual.to_i & 15) == 15
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

class BeNorthBorder
  def matches?(actual)
    @actual = actual
    (@actual.to_i & 16) == 16
  end

  def failure_message
    "expected #{@actual} to be north border, but it wasn't"
  end

  def negative_failure_message
    "expected #{@actual} not be north border, but it was"
  end
end

def be_north_border
  BeNorthBorder.new
end

class BeSouthBorder
  def matches?(actual)
    @actual = actual
    (@actual.to_i & 64) == 64
  end

  def failure_message
    "expected #{@actual} to be south border, but it wasn't"
  end

  def negative_failure_message
    "expected #{@actual} not be south border, but it was"
  end
end

def be_south_border
  BeSouthBorder.new
end

class BeWestBorder
  def matches?(actual)
    @actual = actual
    (@actual.to_i & 128) == 128
  end

  def failure_message
    "expected #{@actual} to be west border, but it wasn't"
  end

  def negative_failure_message
    "expected #{@actual} not be west border, but it was"
  end
end

def be_west_border
  BeWestBorder.new
end

class BeEastBorder
  def matches?(actual)
    @actual = actual
    (@actual.to_i & 32) == 32
  end

  def failure_message
    "expected #{@actual} to be east border, but it wasn't"
  end

  def negative_failure_message
    "expected #{@actual} not be east border, but it was"
  end
end

def be_east_border
  BeEastBorder.new
end