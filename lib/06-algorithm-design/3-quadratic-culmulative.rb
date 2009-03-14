require File.join(File.dirname(__FILE__),'test')

#----excerpt
def find_max_sum_range(range)
  sums=[]
  range.each{|x|sums << sums.last.to_i+x}

  max = 0
  0.upto(range.length) do |start|
    start.upto(range.length-1) do |end_at|
      start_sum = if start == 0 then 0 else sums[start-1] end# sums[-1] == sums.last
      sum_of_range = sums[end_at]-start_sum
      max = [sum_of_range, max].max
    end
  end
  max
end
#----excerpt

test