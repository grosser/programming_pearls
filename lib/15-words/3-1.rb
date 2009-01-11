require File.join(File.dirname(__FILE__),'..','..','helpers','helper')
input = open(assets('bible.txt'))

# benchmarking of occurance search to find possibble speed optimization
occurances = nil

processing = measure do
  occurances = Hash.new(0)
  input.each(' '){|word| occurances[word]+=1}
end
printing = measure do
  puts occurances.to_a.sort_by(&:last).map{|x|x*' times '} * "\n"
end

puts "RESULTS: "
puts " process:#{processing} print:  #{printing}"