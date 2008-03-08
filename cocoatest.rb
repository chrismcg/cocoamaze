require 'osx/cocoa'
b = OSX::NSBundle.alloc.initWithPath('./build/Debug/CocoaMaze.bundle')
puts b
puts b.objc_methods.sort
puts b.load
puts b
puts b.objc_methods.sort
puts b.loaded?
puts b.principalClass

m = b.principalClass.alloc.init
puts m
puts m.width
puts m.height