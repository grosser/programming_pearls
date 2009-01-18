require 'rubygems'
require 'activesupport'

def test
  [
    [],
    [1],
    [1,2,3,4],
    [1,4,-1,2,4,-123,12,13,34,-122,12,43]
  ].each do |range|
    puts range * '|'
    puts find_max_sum_range(range)*'|'
  end
end