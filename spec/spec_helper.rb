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
