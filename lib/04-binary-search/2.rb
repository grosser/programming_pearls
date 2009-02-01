#verification of binary_find
require 'rubygems'
require File.join(File.dirname(__FILE__),'1')

#----excerpt
require 'spec'
describe :binary_find do
  {
    []=>1,
    [1]=>1,
    [1,3]=>3,
    [1,3,4]=>3,
    [1,3,4,6,8,9,12,15,17,20]=>17
  }.each do |range,searched|
    it "find inside #{range.length} element array" do
      binary_find(range,searched).should == range.index(searched)
    end
    it "returns nil when nothing could be found inside a #{range.length} element array" do
      binary_find(range,2).should == nil
    end
  end
end
#----excerpt