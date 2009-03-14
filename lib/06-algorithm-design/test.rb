require 'rubygems'
require 'activesupport'

def test
  {
    []=>0,
    [1]=>1,
    [-1,-2,-1,-4]=>0,#not 'RIGHT' but the expected result
    [-1,-1,-3,0]=>0,
    [0,0]=>0,
    [10,-1,10]=>19,
    [1,2,3,4]=>10,
    [1,4,-1,2,4,-123,12,13,34,-122,12,43]=>59
  }.each do |range,result|
    puts
    puts range * '|'
    puts "#{find_max_sum_range(range)} <-> #{result}"
    puts "XXXXXXXXXXXXXXXXXX" if find_max_sum_range(range) != result
  end
end