require File.join(File.dirname(__FILE__),'test')

#runtime O(n³) 2 loops + the sum loop
def find_max_sum_range(range)
  max_range = []
  0.upto(range.length) do |start|
    start.upto(range.length) do |end_at|
      selected_range = range[start..end_at]
      max_range = selected_range if selected_range.sum > max_range.sum
    end
  end
  max_range
end

test