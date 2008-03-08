begin
  require 'spec'
rescue LoadError
  require 'rubygems'
  require 'spec'
end
begin
  require 'spec/rake/spectask'
rescue LoadError
  puts <<-EOS
To use rspec for testing you must install rspec gem:
    gem install rspec
EOS
  exit(0)
end

desc "Run the specs under spec/"
Spec::Rake::SpecTask.new do |t|
  t.spec_opts = ['--options', "spec/spec.opts"]
  t.spec_files = FileList['spec/**/*_spec.rb']
end

task :spec => [:debug, :build]

task :default => [:spec]

APP_NAME = 'CocoaMaze'

# so you can run with rake debug build etc.

desc "Set the configuration to Debug"
task :debug do
  ENV['CONFIGURATION'] = 'Debug'
end

desc "Set the configuration to Release"
task :release do
  ENV['CONFIGURATION'] = 'Release'
end

desc "Build the #{APP_NAME} target with xcodebuild"
task :build do
  sh "xcodebuild -target #{APP_NAME} -configuration #{ENV['CONFIGURATION']}"
end

