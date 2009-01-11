require File.join(File.dirname(__FILE__),'..','..','helpers','helper')
input = open(assets('bible.txt'))

# benchmarking of optimized occurance search
# shows that it is faster (2.5s vs 3.0s for processing)
#
# Memroy usage: ("puts memory" inside the processing loop)
# normal:    mapped: 17652K    writeable/private: 2180K    shared: 0K
# optimized: mapped: 109892K   writeable/private: 94420K   shared: 0K
# optimized: the text (4.x mb) is in memory twice (once for IO.read and once for text.split, no garbage collection was run)

occurances = nil

processing = measure do
  occurances = Hash.new(0)
  input.read.split(' ').each{|word| occurances[word]+=1}
end
printing = measure do
  puts occurances.to_a.sort_by(&:last).map{|x|x*' times '} * "\n"
end

puts "RESULTS: "
puts " process:#{processing} print:  #{printing}"