#verification of binary_find
require 'rubygems'
require 'spec'
require '1'

describe :binary_find do
  it "returns nil when searching in an empty array" do
    binary_find([],1).should == nil
  end
  {
    [1]=>1,
    [1,3]=>3,
    [1,3,4]=>3,
    [1,3,4,6,8,9,12,15,17,20]=>17
  }.each do |range,find|
    it "find inside #{range.length} element array" do
      binary_find(range,find).should == range.index(find)
    end
    it "returns nil when nothing could be found inside a #{range.length} element array" do
      binary_find(range,2).should == nil
    end
  end
end