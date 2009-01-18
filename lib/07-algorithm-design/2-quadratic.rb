require File.join(File.dirname(__FILE__),'test')

#runtime O(n³) 2 loops + the sum loop
def find_max_sum_range(range)
  max = 0
  0.upto(range.length) do |start|
    sum=0
    start.upto(range.length-1) do |end_at|
      sum+=range[end_at]
      max = [sum, max].max
    end
  end
  max
end

test