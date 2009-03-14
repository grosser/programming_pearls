require File.join(File.dirname(__FILE__),'test')

#----excerpt
def find_max_sum_range(range)
  max = partial_max = 0
  range.each do |x|
    # keep adding to partial max unless it sinks below 0
    partial_max = [partial_max+x, 0].max
    max = [partial_max, max].max
  end
  max
end
#----excerpt

test