require File.join(File.dirname(__FILE__),'1')
#----excerpt
class Heap
  def insert_top(value)
    @values.unshift(value)
    position = 0
    while true
      smallest_child = smallest_child(position)
      break if not @values[smallest_child] or @values[smallest_child] >= value
      swap(position, smallest_child)
      position = smallest_child
    end
  end

protected

  def smallest_child(position)
    left,right = left_child(position), right_child(position)
    return left  unless @values[right]
    return right unless @values[left]
    if @values[left] <= @values[right]
      left
    else
      right
    end
  end
end
#----excerpt

h = Heap.new
10.times{
  h.insert_top(rand(100))
  puts h.print
}