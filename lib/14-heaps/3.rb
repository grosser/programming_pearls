require File.join(File.dirname(__FILE__),'2')
#----excerpt
class Heap
  def extract_smallest
    smallest = @values.shift
    insert_top(@values.pop)
    smallest
  end
end
#----excerpt

ran_from_cli = __FILE__ == $0
if ran_from_cli
  h = Heap.new
  10.times{
    h.insert_top(rand(100))
  }
  puts h.print
  puts '-'*60
  puts h.extract_smallest
  puts '-'*60
  puts h.print
end