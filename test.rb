#!/usr/local/bin/ruby

require 'pp'
require 'date'
require 'trollop' # optparse http://trollop.rubyforge.org/ .. in site_ruby

def getOptions()
  opts = Trollop::options do
    opt :v, "Verbose",:default=> 0
    opt :a, "Action to run",:type=> String,:default=>'hw'
  end
  Trollop::die :a, "Must indicate action to take" if  opts[:a] == nil
  return opts
end

if __FILE__ == $0
  options = getOptions()
  if options.a == 'hw'
    puts "hello world"
  end
end


# git remote add bozo https://github.com/pschoenster/wruby.git
# git pull https://github.com/pschoenster/wruby.git
# https://github.com/pschoenster/wruby.git
# git remote add origin https://github.com/username/Hello-World.git
