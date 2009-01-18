require File.join(File.dirname(__FILE__),'test')

#runtime O(n log n) - divide problem into 2 smaller problems
def find_max_sum_range(range)
  #trivial
  return 0 if range.empty?
  return [0,range[0]].max if range.length == 1

  #divide
  middle = range.length / 2
  left = range[0...middle]
  right = range[middle..-1]

  #start from the middel, and build sums to left/right end, to find max, then add them
  middle_max = [left.reverse, right].sum do |sub_range|
    max = sum = 0
    sub_range.each do |value|
      sum+=value
      max = [max,sum].max
    end
    max
  end

  [
    middle_max,
    find_max_sum_range(left),
    find_max_sum_range(right)
  ].max
end

test