#----excerpt
class Heap
  def initialize
    @values = []
  end

  def insert_bottom(value)
    @values << value
    position = @values.length - 1
    while true
      return if position == root
      return if @values[parent(position)] < value
      swap_with_parent(position)
      position = parent(position)
    end
  end

  # show each node, with its children
  #TODO print a real tree...
  def print
    0.upto(@values.length-1){|i|
      to_s = lambda{|x| "#{x}(#{@values[x]})"}
      puts "#{to_s.call(i)} #{to_s.call(left_child(i))} #{to_s.call(right_child(i))}"
    }
  end

private

  def swap_with_parent(i)
    @values[parent(i)], @values[i] = @values[i], @values[parent(i)]
  end

  def root
    0
  end

  def parent(i)
    (i+1)/2 - 1
  end

  def left_child(i)
    (2*i)+1
  end
  
  def right_child(i)
    (2*i)+2
  end
end
#----excerpt

h = Heap.new
10.times{
  h.insert_bottom(rand(100))
  puts h.print
}