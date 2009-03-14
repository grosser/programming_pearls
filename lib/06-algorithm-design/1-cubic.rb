require File.join(File.dirname(__FILE__),'test')

#----excerpt
#runtime O(n³) 2 loops + the sum loop
def find_max_sum_range(range)
  max = 0
  0.upto(range.length) do |start|
    start.upto(range.length-1) do |end_at|
      max = [range[start..end_at].sum, max].max
    end
  end
  max
end
#----excerpt

test