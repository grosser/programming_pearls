require File.join(File.dirname(__FILE__),'3')
#----excerpt
class Heap
  def self.sort(array)
    h = Heap.new
    array.each {|x|h.insert_top(x)}
    array.map{h.extract_smallest}
  end
end
#----excerpt

ran_from_cli = __FILE__ == $0
if ran_from_cli
  puts Heap.sort([3,1,5,10,21,42,2,0,12])
end