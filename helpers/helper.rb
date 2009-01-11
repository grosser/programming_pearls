# these helpers should not be used to make the tasks easier,
# just provide often needed setup or inter-operating system
# independence

# i do not like to pass something as STDIN
# since i would have to repeat this for every run
ASSETS = File.join(File.dirname(__FILE__),'..','assets')
def assets(*path)
  File.join(ASSETS,*path)
end

# simple memory usage
def memory
  pid = Process.pid
  map = `pmap -d #{pid}`
  map.split("\n").last
end

# return the common prefix of 2 strings
# abaa, abacc ==> aba
def common_prefix(a,b)
  return '' if b.nil?
  0.upto(a.length) {|i|
    return (i == 0 ? "" : a[0..i-1]) if a[0..i] != b[0..i]
  }
  ''
end

require 'benchmark'
include Benchmark