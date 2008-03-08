require 'osx/cocoa'
puts b = OSX::NSBundle.alloc.initWithPath('./build/Debug/CocoaMaze.bundle')
puts b.load
puts b.loaded
puts b.principleClass