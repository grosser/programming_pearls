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
      swap(position, parent(position))
      position = parent(position)
    end
  end

private

  def swap(a,b)
    @values[a], @values[b] = @values[b], @values[a]
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

  # show each node, with its children
  #TODO print a real tree...
class Heap
  def print
    0.upto(@values.length-1){|i|
      to_s = lambda{|x| "#{x}(#{@values[x]})"}
      puts "#{to_s.call(i)} #{to_s.call(left_child(i))} #{to_s.call(right_child(i))}"
    }
  end
end

ran_from_cli = __FILE__ == $0
if ran_from_cli
  h = Heap.new
  10.times{
    h.insert_bottom(rand(100))
    puts h.print
  }
end